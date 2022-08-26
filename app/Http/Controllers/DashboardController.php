<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Role;
use App\Models\User;
use App\Models\UserPermission;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        $total_roles = count(Role::select('id')->get());
        $total_users = count(User::select('id')->get());
        $total_permissions = count(UserPermission::select('id')->get());
        $total_products = count(Product::select('id')->get());

        return view('backend.pages.dashboard.index', compact('total_roles', 'total_users', 'total_permissions', 'total_products'));
    }
}
