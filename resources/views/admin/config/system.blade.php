@if ( $errors->any() )
    @foreach ($errors->all() as $error)
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <h4><i class="icon fa fa-ban"></i>错误信息</h4>
            <p>{{ $error }}</p>
        </div>
    @endforeach
@endif

<!-- left column -->
<div class="col-md-6">
    <!-- general form elements -->
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">网站设置</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <form role="form" method="post">
            <div class="box-body">
                <input type="hidden" name="file" value="admin">
                <div class="form-group {!! !$errors->has('appName') ? '' : 'has-error' !!}">
                    <label for="exampleInputEmail1">网站名称</label>
                    <input type="text" class="form-control" name="name" id="exampleInputEmail1" value="{{$config['name']}}">
                </div>
                <div class="form-group {!! !$errors->has('logo') ? '' : 'has-error' !!}">
                    <label>管理面板标题</label>
                    <input type="text" class="form-control" name="logo" value="{{$config['logo']}}">
                </div>
                <div class="form-group {!! !$errors->has('miniLogo') ? '' : 'has-error' !!}">
                    <label>迷你标题</label>
                    <input type="text" class="form-control" name="miniLogo" value="{{$config['logo-mini']}}">
                </div>
            </div>
            <!-- /.box-body -->

            <div class="box-footer">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <button type="submit" class="btn btn-primary pull-right">提交</button>
            </div>
        </form>
    </div>
</div>