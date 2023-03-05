@extends('layouts.admin')
@section('title')
اضافة الصلاحية جديدة
@endsection

@section('contentheader')
الصلاحية
@endsection

@section('contentheaderlink')
<a href="{{ route('admin.treasuries.index') }}"> الصلاحية </a>
@endsection

@section('contentheaderactive')
اضافة
@endsection



@section('content')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title card_title_center">اضافة الصلاحية جديدة</h3>
            </div>
          <!-- /.card-header -->
          <div class="card-body">
            {!! Form::open(array('route' => 'roles.store','method'=>'POST')) !!}
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
            <strong>إذن:</strong>
            <br/>
            @foreach($permission as $value)
                <label style="text-indent:6px; ">{{ Form::checkbox('permission[]', $value->id, false, array('class' => 'name')) }}
                {{ $value->name }}</p></label>

            @endforeach
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12 text-center">
        <button type="submit" class="btn btn-primary btn-sm"> اضافة</button>
                            <a  href="{{ route('roles.index') }}" class="btn btn-sm btn-danger">الغاء</a>

    </div>
</div>
</div>
</div>










@endsection



