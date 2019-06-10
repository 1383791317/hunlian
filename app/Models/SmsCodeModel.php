<?php
/**
 * *************************************
 * Author: 大鱼
 * E_mail: yc_1224@163.com
 * Date  : 2019/6/10 0010
 * *************************************
 */
namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Validator;

class SmsCodeModel extends Model
{
    protected $table    = 'sms_code';
    public    $content  = "【云付通】尊敬的客户您好，欢迎使用云付通平台，您的手机验证码是：{name}，若非本人操作，请忽略！";
    public    $phone;
    public    $code;
    public    $timestamps = false;

    /**
     * 发送短信
     * @return array
     */
    public function send()
    {
        $rule = [
            'phone'=>'required|size:11',
        ];
        $messages = [
            'phone.required'=>'手机号不能为空',
            'phone.size'   => '手机格式错误',
        ];
        $validator = Validator::make(['phone'=>$this->phone],$rule,$messages);
        if($validator->fails()){
            return response()->json(['code'=>'ERROR','msg'=>$validator->errors()->first()]);
        }

//        $this->code = mt_rand(100000,999999);
        $this->code = 123456;
        $this->content = str_replace('{name}',$this->code,$this->content);

        //查询验证
        $find = $this->where('phone',$this->phone)->orderBy('id','desc')->first();
        if (!empty($find)){
            $send_time = time() - $find->send_time;
            if ($send_time<5) return response()->json(['code'=>'ERROR','msg'=>'发送失败，操作频繁，请5秒后重试']);
        }

        //发送验证码
//        $send = $this->storeSms($this->phone,$this->content);
//        if ($send['code'] !== 200) return response()->json(['code'=>'SUCCESS','msg'=>$send['msg']]);
        //储存数据
        $sms_d = [
            'code'      => $this->code,
            'phone'     => $this->phone,
            'content'   => $this->content,
            'send_time' => time(),
            'end_time'  => time() + 300,
            'status'    => 0,
        ];
        $this->insert($sms_d);
        return response()->json(['code'=>'SUCCESS','msg'=>'发送成功']);
    }

    /**
     * 验证验证码
     * @return mixed
     */
    public function verifySms()
    {
        if (empty($this->code)) return ['code'=>400,'msg'=>'请输入验证码'];

        $find = $this->where(['phone'=>$this->phone,'status'=>0])->orderBy('id','desc')->first();

        if (empty($find)) return ['code'=>400,'msg'=>'请先获取验证码'];

        if (time() > $find->end_time) return ['code'=>400,'msg'=>'验证码错误'];

        if ((int) $this->code != $find['code']) return ['code'=>400,'msg'=>'验证码错误'];

        $find->status = 1;

        $find->save();

        return ['code'=>200];
    }


    protected function storeSms($phone,$content)
    {
        $url = "http://www.ikxkj.com:9001/sms.aspx";
        $data = [
            'userid' => 1078,
            'account' => 'Barry',
            'password' => '888888',
            'mobile'  => $phone,
            'content' => $content,
            'action'=>'send',
        ];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);

        $return_content = curl_exec($ch);
        if($return_content === FALSE){
            $return_content = curl_errno($ch);
        }
        //$return_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
        $print = $this->xmlToArray($return_content);
        if (strtolower($print['returnstatus']) == 'success')
        {
            return ['code'=>200,'msg'=>'发送成功'];
        }else{
            return ['code'=>400,'data'=>$print];
        }
    }
    protected function xmlToArray($xml) {
        //禁止引用外部xml实体
        libxml_disable_entity_loader(true);
        $xmlstring = simplexml_load_string($xml, 'SimpleXMLElement', LIBXML_NOCDATA);
        $val = json_decode(json_encode($xmlstring), true);
        return $val;
    }
}