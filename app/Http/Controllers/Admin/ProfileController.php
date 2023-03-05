<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin;
use Illuminate\Support\Facades\Hash;
class ProfileController extends Controller
{
    public function index()
    {

        $information = Admin::findorFail(auth()->user()->id);
        return view('admin.profile.index', compact('information'));

    }

    public function update(Request $request, $id)
    {

        $information = Admin::findorFail($id);

        if (!empty($request->password)) {
            $information['name'] = $request->name;
            $information['username'] = $request->username;
            $information->password = Hash::make($request->password);
            $information->save();
        } else {
            $information['name'] = $request->name;
            $information->save();
        }
        return redirect()->route('admin.profile.show')->with(['success' => 'لقد تم اضافة تحديث البيانات  بنجاح']);


    }












}
