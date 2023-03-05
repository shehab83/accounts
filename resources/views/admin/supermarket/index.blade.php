@extends('layouts.admin')
@section('title')
سوبر ماركت
@endsection
@section("css")
<link rel="stylesheet" href="{{ asset('assets/admin/plugins/select2/css/select2.min.css') }}">
<link rel="stylesheet" href="{{ asset('assets/admin/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}">
@endsection
@section('contentheader')
سوبر ماركت
@endsection
@section('contentheaderlink')
<a href="{{ route('admin.supermarket.index') }}"> سوبر ماركت   </a>
@endsection
@section('contentheaderactive')
عرض
@endsection
@section('content')


<div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h3 class="card-title card_title_center">اضافة فاتورة السوبر ماركت   </h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <div id="ajax_responce_serarchDivparentpill">

                @php
                    $client_id = request()->client_id;

                @endphp
                <form class="search col-md-12" action="{{ route('admin.supermarket.barcode.search') }}" method="get">
                    @csrf
                    <div class="form-group">
                        <label> إضف منتج</label>
                        <input  type="text" id="scanner" name="scanner"
                        class="form-control form-control-solid w-250px ps-14" placeholder="إضف منتج"  >

                      </div>

                    <div class="col-md-3">
                        <button type="submit" class="btn btn-info btn-sm"> إضافة </button>
                    </div>

                    <div class="col-md-6">

                    </div>
                </form>
                <div class="col-md-4">
                </div>
            </div>
            <table>
                <tr class="first-tr">
                    <th>أسم المنتج</th>
                    <th>الكمية</th>
                    <th>السعر </th>
                    <th>السعر </th>
                    <th>الإجمالي</th>
                </tr>
                @forelse ($cart as $key => $item)
                @php
                    $product = App\Models\Inv_itemCard::findorfail($item->product_id);
                @endphp
                    <tr>
                        <td>{{ $product->name }}</td>
                        <form action="" method="post">
                            @csrf
                            @method('PATCH')
                            <td><input type="number" name="qty" class="qty" min="1"
                                    value="{{ $item->qty }}"></td>
                            <td>{{ $item->price }} ج.م.</td>
                            <td>{{ $item->price * $item->qty }} ج.م.</td>
                            <td>
                                <div class="flex-icons">
                                    <button type="submit" class="update"
                                        style="background-color:#2B3467; padding: 12px 12px; border-radius: 10px; color: white; font-size: 20px; line-height: 2.6;"><i
                                            style="font-size: 25px;" class='bx bx-refresh'></i></button>
                                </div>
                            </td>
                        </form>
                        <td>
                            <div class="flex-icons">
                                <form action="" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="remove"
                                        style="background-color:#EB455F; padding: 12px 12px; border-radius: 10px; color: white; font-size: 20px;"><i
                                            style="font-size: 25px;" class='bx bxs-trash '></i></button>
                                </form>

                            </div>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="7">no product in cart</td>
                    </tr>
                @endforelse
            </table>
            @php
            $sub = 0;
            foreach ($cart as $cart) {
                $sub += $cart->price * $cart->qty;
            }
        @endphp
         <div class="cart-total">
            <p>الإجمالي :</p>
            <p> {{ $sub }}ج.م.</p>
        </div>


        </section>


    </div>
</div>
</div>
</div>
@endsection
@section('script')
<script src="{{ asset('assets/admin/js/sales_return_invoices.js') }}"></script>
<script  src="{{ asset('assets/admin/plugins/select2/js/select2.full.min.js') }}"> </script>
<script>
   //Initialize Select2 Elements
   $('.select2').select2({
     theme: 'bootstrap4'
   });
</script>
@endsection
