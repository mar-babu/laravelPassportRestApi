<?php

namespace App\Http\Controllers;

use App\Models\Role;
use App\Models\User;
use App\Models\UserPermission;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $users = User::query()
            // ->where("status", 1)
            ->get();

        return view('backend.pages.user.index', [
            'users' => $users
        ]);
    }

    public function create()
    {
        return view('backend.pages.user.create', [
            'roles' => Role::query()
                ->get(),
        ]);
    }

    public function store(Request $request)
    {
/*        $request->validate([
            'name' => 'required|unique:users,name|unique:users,email',
            'email' => 'required|unique:users',
            'phone' => "required|unique:users",
            'role_id' => 'required',
            'password' => 'required|confirmed'
        ]);*/

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->password = Hash::make($request->password);
        $user->user_type = 'staff';
        $user->save();

        $userPermission = new UserPermission();
        $userPermission->role_id = $request->role_id;
        $userPermission->user_id = $user->id;
        if ($userPermission->save()) {
            cacheUserPermission($user->id, true);
            return back()->with('message', "User Created Successfully");
        }
    }

    public function edit($id)
    {
        return view('backend.pages.user.edit', [
            'user' => User::findOrFail($id),
            'roles' => Role::all(),
        ]);
    }

    public function update(Request $request)
    {
/*        $request->validate([
            'name' => 'required|unique:users,name,' . $request->id,
            'email' => 'required|unique:users,email,' . $request->id,
            'phone' => "required|unique:users,phone," . $request->id,
            'role_id' => 'required',
        ]);*/

        $user = User::findOrFail($request->id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone = $request->phone;
        if ($request->has("password")) {
            $user->password = Hash::make($request->password);
        }
        $user->user_type = 'staff';
        $user->save();

        $userPermission = UserPermission::where('user_id', $request->id)->first();
        $userPermission->role_id = $request->role_id;
        $userPermission->user_id = $user->id;
        if ($userPermission->save()) {
            cacheUserPermission($user->id, true);
            return response()->json(['message' => 'Successfully Registered !',], 200);
//                ->with('message', "User Update Successfully");
        }
    }

    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->status = 0;

        if ($user->save()) {
            return back()->with('message', "User SoftDeleted Successfully");
        }
    }

    public function status($id)
    {
        $user = User::query()
            ->where('id', '!=', auth()->user()->id)
            ->find($id);
        if ($user && !($user->user_type == 'admin' && auth()->user()->user_type == 'staff')) {
            $user->status = $user->status == 1 ? 0 : 1;
            $user->save();
            return back()->with('message', "User Status Updated Successfully");
        }
        return back()->with('message', "Try Another User")->with('type', 'error');
    }
}
