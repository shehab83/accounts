
@if (@isset($data) && !@empty($data) && count($data) >0 )
@php
           $i=1;
          @endphp
          <table id="example2" class="table table-bordered table-hover">
            <thead class="custom_thead">
           <th>مسلسل</th>
           <th>اسم المستخدم</th>
           <th>Roles</th>
           <th></th>

            </thead>
            <tbody>
         @foreach ($data as $info )
            <tr>
             <td>{{ $i }}</td>
             <td>{{ $info->name }}</td>
             <td>
                @if(!empty($info->getRoleNames()))
                @foreach($info->getRoleNames() as $v)
                   <label class="badge badge-success">{{ $v }}</label>
                @endforeach
              @endif
             </td>
         <td>
           {{-- @can('admin-edit')
            <a href="{{ route('admin.admins_accounts.edit',$info->id) }}" class="btn btn-sm  btn-primary">تعديل</a>
            @endcan --}}
        @can('صلاحيات خاصة')
        <a href="{{ route('admin.admins_accounts.details',$info->id) }}" class="btn btn-sm  btn-info">صلاحيات خاصة</a>
        @endcan

         </td>


           </tr>
      @php
         $i++;
      @endphp
         @endforeach



            </tbody>
             </table>
      <br>
      <div class="col-md-12" id="ajax_pagination_in_search">
        {{ $data->links() }}
     </div>



               @else
               <div class="alert alert-danger">
                 عفوا لاتوجد بيانات لعرضها !!
               </div>
                     @endif
