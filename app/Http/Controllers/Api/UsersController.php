<?php
/**
 * *************************************
 * Author: 大鱼
 * E_mail: yc_1224@163.com
 * Date  : 2019/6/6 0006
 * *************************************
 */
namespace app\Http\Controllers\Api ;

use App\Http\Controllers\Controller;
use App\Models\SmsCodeModel;
use App\Models\UsersModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use JWTAuth;
use JWTFactory;

class UsersController extends Controller
{
    protected $guard = 'api';
    public function __construct(JWTAuth $jwt)
    {
        $this->jwt = $jwt;
    }
    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        if ($request->has(['phone','password'])){
            $user = UsersModel::where('phone',$request->phone)->first();

            if (empty($user)) return response()->json(['code'=>'ERROR','msg'=>'账号不存在'],404);

            if (!Hash::check($request->password,$user->password)) return response()->json(['code'=>'ERROR','msg'=>'密码错误'],400);
        }

        if (!isset($user)) return response()->json(['code'=>'ERROR','msg'=>'非法请求'],404);

        $token = JWTAuth::fromUser($user);

        $user->last_login = date('Y-m-d H:i:s',time());

        $user->save();

        return response()->json([
            'code'=>'SUCCESS',
            'msg' => '登录成功',
            'data'=>[
                'token'         => $token,
                'name'          => $user->name?:'暂无昵称',
                'phone'         => $user->phone,
                'age'           => $user->age,
                'stature'       => $user->stature,
                'constellation' => $user->constellation,
                'job'           => $user->job,
                'address'       => $user->address,
            ]
        ]);
    }

    /**
     * 短信验证登录
     */
    public function smsLogin(Request $request)
    {
        $user = UsersModel::where('phone',$request->phone)->first();

        if (empty($user)) return response()->json(['code'=>'ERROR','msg'=>'账号不存在'],404);

        $sms_model = new SmsCodeModel();

        $sms_model->code = $request->code;

        $sms_model->phone = $request->phone;

        $verify_res = $sms_model->verifySms();

        if ($verify_res['code'] !== 200) return response()->json(['code'=>'ERROR','msg'=>$verify_res['msg']],400);;

        $token = JWTAuth::fromUser($user);

        $user->last_login = date('Y-m-d H:i:s',time());

        $user->save();

        return response()->json([
            'code'=>'SUCCESS',
            'msg' => '登录成功',
            'data'=>[
                'token'         => $token,
                'name'          => $user->name?:'暂无昵称',
                'phone'         => $user->phone,
                'age'           => $user->age,
                'stature'       => $user->stature,
                'constellation' => $user->constellation,
                'job'           => $user->job,
                'address'       => $user->address,
            ]
        ]);
    }

    /**
     * 发送验证码
     *
     */

    public function sms_code(Request $request)
    {
        $model = new SmsCodeModel();

        $model->phone = $request->input('phone');

        return $model->send();
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth('api')->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     * 刷新token，如果开启黑名单，以前的token便会失效。
     * 值得注意的是用上面的getToken再获取一次Token并不算做刷新，两次获得的Token是并行的，即两个都可用。
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth('api')->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth('api')->factory()->getTTL() * 60
        ]);
    }
}