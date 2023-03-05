<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Cart;
use App\Models\Inv_itemCard;

class supermarketControllrt extends Controller
{


    public function index(Request $req)
    {

        $products = Inv_itemCard::select('barcode', 'product_code', 'name')->paginate(5);
        $cart = Cart::get();
        return view('admin.supermarket.index', compact('products', 'cart'));
    }


    public function SearchProductBarcode(Request $request)
    {
        $code = $request->scanner;
        if ($code) {
            $product = Inv_itemCard::where('product_code', $code)->first();
            if ($product) {
                Cart::create([
                    'price' => $product->gomla_price,
                    'qty' => 1,
                    'product_id' => $product->id,
                ]);
            }
        }
        $cart = Cart::get();
        $products = Inv_itemCard::select('barcode', 'product_code', 'name')->paginate(5);
        return redirect()->route('admin.supermarket.barcode.search')->with('success', 'The product Has Been Added Successfully!!');
    }





















}
