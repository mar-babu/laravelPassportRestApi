<?php
use \App\Models\UserPermission;

if (!function_exists('permission')) {
    function cacheUserPermission($user_id, $shouldUpdate = false)
    {
        if ($shouldUpdate)
            cache()->forget('user-permission-' . $user_id);

        return cache()->rememberForever('user-permission-' . $user_id, function () use ($user_id) {
            return UserPermission::query()->where('user_id', $user_id)->with('role.permission')->first();
        });
    }

    function permission($data)
    {
        $userPermission = cacheUserPermission(auth()->user()->id);

        if (isset($userPermission->role->permission)) {
            $permission = $userPermission->role->permission;
        }

        if (in_array($data, json_decode($permission->permissions))) {
            return true;
        }
    }

    function permissionArr($data)
    {
        foreach ($data as $pr) {
            if (permission($pr)) {
                return true;
            }
        }
        return false;
    }
}