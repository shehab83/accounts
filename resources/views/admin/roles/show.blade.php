@extends('layouts.admin')
@section('title')
    الصلاحيات
@endsection

@section('contentheader')
    الصلاحيات
@endsection

@section('contentheaderlink')
    <a href="{{ route('admin.treasuries.index') }}"> المستخدمين </a>
@endsection

@section('contentheaderactive')
    عرض
@endsection



@section('content')

    <div class="row">
        <div class="card">
            <div class="card-body">
                <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group"><br/>
                    <strong>الاسم ::</strong>
                    {{ $role->name }}
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12">
                <div class="form-group">
                    <strong>الصلاحيات::</strong>
                    @if (!empty($rolePermissions))
                        @foreach ($rolePermissions as $v)
                            <label class="label label-success">{{ $v->name }}/</label>
                        @endforeach
                    @endif
                </div>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-12 text-center">
             <a  href="{{ route('roles.index') }}" class="btn btn-sm btn-danger">خلف</a>

            </div>
        </div>
        </div>
    </div>
    </div>


@endsection

@section('script')
    <script src="{{ asset('assets/admin/js/treasuries.js') }}"></script>
@endsection
