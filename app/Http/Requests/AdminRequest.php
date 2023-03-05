<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'username' => 'required',
            'email' => 'required',
            'password' => 'required|min:6|same:confirm-password',
            'roles' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'name.required' => 'اسم مطلوب',
            'username.required' => 'اسم المستخدم مطلوب',
            'email.required' => ' بريد إلكتروني مطلوب',
            'password.required' => 'كلمة المرور مطلوب ',
            'roles.required' => ' اختار نوع الصلاحية',

        ];
    }
}
