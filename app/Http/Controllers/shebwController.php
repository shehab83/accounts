<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\shehb;
class shebwController extends Controller
{


    public function index(Request $request)
    {
        $workspace = shehb::select()->orderby('id','DESC')->paginate(PAGINATION_COUNT);
        return view('welcome', compact('workspace'));
    }







}
