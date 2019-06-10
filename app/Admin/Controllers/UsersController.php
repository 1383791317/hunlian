<?php
/**
 * *************************************
 * Author: 大鱼
 * E_mail: yc_1224@163.com
 * Date  : 2019/6/6 0006
 * *************************************
 */
namespace App\Admin\Controllers;


use App\Http\Controllers\Controller;
use App\Models\UsersModel;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Illuminate\Http\Request;

class UsersController extends Controller
{
    public function index(Content $content)
    {
        $content->header('会员');
        $content->description('列表');
        $content->body(Admin::grid(UsersModel::class,function (Grid $grid){
            $grid->id('ID')->sortable();
            $grid->name('昵称');
            $grid->email('邮箱');
            $grid->created_at('加入时间')->sortable();
        }));
        return $content;
    }

    public function store()
    {
        return $this->form()->store();
    }

    public function destroy($id){
        return $this->form()->destroy($id);
    }

    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('会员');
            $content->description('新增');

            $content->body($this->form());
        });
    }

    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('会员');
            $content->description('编辑');

            $content->body($this->form()->edit($id));
        });
    }

    protected function form()
    {
        return Admin::form(UsersModel::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->text('name', '昵称');
            $form->text('email', '邮箱')
                ->rules('email',['email'=>'邮箱不能为空']);
            $form->ignore(['password_confirmation']);
            $form->password('password', '密码')->rules('confirmed',['confirmed'=>'两次密码不一致']);
            $form->password('password_confirmation','确认密码');

            $form->display('updated_at','编辑时间');
            $form->display('created_at','加入时间');
            $form->submitted(function (Form $form) {
            });
        });
    }
}