@extends('layouts.admin')
@section('title')
اضافة مستخدم جديدة
@endsection

@section('contentheader')
مستخدم
@endsection

@section('contentheaderlink')
<a href="{{ route('admin.treasuries.index') }}"> مستخدم </a>
@endsection

@section('contentheaderactive')
اضافة
@endsection



@section('content')


<div class="card">
    <div class="card-header">
      <h3 class="card-title card_title_center">إنشاء مستخدم جديد</h3>
    </div>
    <!-- /.card-header -->
    <div class="card-body">

{!! Form::open(array('route' => 'admin.admins_accounts.store','method'=>'POST')) !!}
<div class="row">
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>الاسم:</strong>
            {!! Form::text('name', null, array('placeholder' => 'Name','class' => 'form-control')) !!}
            @error('name')
            <span class="text-danger">{{ $message }}</span>
            @enderror
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>اسم المستخدم:</strong>
            {!! Form::text('username', null, array('placeholder' => 'UserName','class' => 'form-control')) !!}
            @error('username')
            <span class="text-danger">{{ $message }}</span>
            @enderror
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>بريد إلكتروني:</strong>
            {!! Form::text('email', null, array('placeholder' => 'Email','class' => 'form-control')) !!}
            @error('email')
            <span class="text-danger">{{ $message }}</span>
            @enderror
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>كلمة المرور:</strong>
            {!! Form::password('password', array('placeholder' => 'Password','class' => 'form-control')) !!}
            @error('password')
            <span class="text-danger">{{ $message }}</span>
            @enderror
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>تأكيد كلمة المرور:</strong>
            {!! Form::password('confirm-password', array('placeholder' => 'Confirm Password','class' => 'form-control')) !!}
            @error('confirm-password')
            <span class="text-danger">{{ $message }}</span>
            @enderror
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12">
        <div class="form-group">
            <strong>الصلاحية:</strong>
            {!! Form::select('roles[]', $roles,[], array('class' => 'form-control','multiple')) !!}
            @error('roles')
            <span class="text-danger">{{ $message }}</span>
            @enderror
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
        <button  type="submit" class="btn btn-primary btn-sm"> اضافة</button>
        <a href="{{ route('admin.admins_accounts.index') }}" class="btn btn-sm btn-danger">الغاء</a>


    </div>
</div>
{!! Form::close() !!}



</div>




</div>
</div>



@endsection



