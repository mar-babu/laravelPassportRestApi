<?php

namespace Database\Seeders;

use App\Models\Role;
use App\Models\RoleHasPermission;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Role::create(['role_name' => 'Sadmin']);
        Role::create(['role_name' => 'Admin']);
        Role::create(['role_name' => 'Manager']);

        RoleHasPermission::create(['role_id' => 1, 'permissions' => '["dashboard","pro","p1","p2","p3","p4","pad1","user","u1","u2","u3","u4","ro1","ro2","ro3"]']);
    }
}
