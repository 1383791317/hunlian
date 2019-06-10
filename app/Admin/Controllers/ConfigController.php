<?php
/**
 * *************************************
 * Author: 大鱼
 * E_mail: yc_1224@163.com
 * Date  : 2019/4/15 0015
 * *************************************
 */
namespace App\Admin\Controllers;

use App\Http\Controllers\Controller;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ConfigController extends Controller
{
    public function system(Content $content,Request $request)
    {
        if ($request->isMethod('post')){
            $input = $request->post();
            $validator = Validator::make(
                $input,
                [
                    'name' => 'required',
                    'logo' => 'required',
                    'miniLogo' => 'required'
                ],
                [
                    'name.required' => "名字不能为空",
                    'logo.required' => "管理面板标题不能为空",
                    'miniLogo.required' => "迷你标题不能为空"
                ]);
            if ($validator->fails()){
                return redirect('/admin/config/system')->withErrors($validator->errors())->withInput();
            }
            $pat = ['name'];
            $rep = [$input['name']];
            if (setconfig($pat,$rep,$input['file'])){
                admin_toastr('配置成功','success');
            };
        }
        $content->header('系统配置');
        $content->description('列表');
        $content->row(view('admin.config.system',['config'=>config('admin')]));
        return $content;
    }
}