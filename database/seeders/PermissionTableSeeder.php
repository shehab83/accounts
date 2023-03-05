<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permissions = [
            'role-list',
            'role-create',
            'role-edit',
            'role-delete',
            'admin-list',
            'admin-create',
            'admin-edit',
            'admin-specialpowers',
            'treasuries-create',
            'treasuries-edit',
            'treasuries-show',

         ];

         foreach ($permissions as $permission) {
              Permission::create(['name' => $permission]);
         }
    }
}
