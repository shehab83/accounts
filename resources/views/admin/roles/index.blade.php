@extends('layouts.admin')
@section('title')
 الصلاحيات
@endsection

@section('contentheader')
المستخدمين
@endsection

@section('contentheaderlink')
<a href="{{ route('admin.treasuries.index') }}"> المستخدمين </a>
@endsection

@section('contentheaderactive')
عرض
@endsection



@section('content')
<div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
            <h3 class="card-title card_title_center">بيانات  الصلاحيات </h3>
            @can('role-create')
            <a href="{{ route('roles.create') }}" class="btn btn-sm btn-success" >اضافة الصلاحيات جديد</a>
            @endcan
        </div>
        <div class="card-body">
    <table id="example2" class="table table-bordered table-hover">
        <thead class="custom_thead">
        <tr>
            <th>مسلسل</th>
           <th>اسم الصلاحية</th>

           <th width="280px"></th>
        </tr>
    </thead>
          @foreach ($roles as $key => $role)
          <tr>
              <td>{{ ++$i }}</td>
              <td>{{ $role->name }}</td>
              <td>
                  <a class="btn btn-info" href="{{ route('roles.show',$role->id) }}">المزيد</a>
                  @can('role-edit')
                      <a class="btn btn-primary" href="{{ route('roles.edit',$role->id) }}">تعديل</a>
                  @endcan
                  @can('role-delete')
                      {!! Form::open(['method' => 'DELETE','route' => ['roles.destroy', $role->id],'style'=>'display:inline']) !!}
                          {!! Form::submit('حذف', ['class' => 'btn btn-danger']) !!}
                      {!! Form::close() !!}
                  @endcan
              </td>
          </tr>
          @endforeach
      </table>


      {!! $roles->render() !!}

    </div>
    </div>
  </div>
</div>




@endsection

@section('script')
<script src="{{ asset('assets/admin/js/treasuries.js') }}"></script>

@endsection


