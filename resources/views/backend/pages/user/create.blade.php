@extends('backend.layouts.master')

@section('title', 'User Create')

@section('content')
    <!-- page title area start -->
    <div class="page-title-area">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="breadcrumbs-area clearfix">
                    <h4 class="page-title pull-left">Create User</h4>
                    <ul class="breadcrumbs pull-left">
                        <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                        <li><a href="{{ url('user/index') }}">All Users</a></li>
                        <li><span>Create User</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6 clearfix">

                @include('backend.layouts.partials.logout')

            </div>
        </div>
    </div>
    <!-- page title area end -->

    <div class="main-content-inner">
        <div class="row">
            <!-- data table start -->
            <div class="col-12 mt-5">
                <div class="card">
                    <div class="card-body">
                        <h4 class="header-title">Create New User</h4>
                        @include('backend.layouts.partials.messages')
                        <form action="{{ url('/user/store') }}" method="POST">
                                @csrf

                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <label for="">User Name<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="name" placeholder="User Name" required>
                                        @error('name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <label for="">Mobile Number<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="phone" placeholder="Mobile Number" required>
                                        @error('phone')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6 mt-3">
                                        <label for="">User Email<span class="text-danger">*</span></label>
                                        <input type="email" class="form-control" name="email" placeholder="User Email" required>
                                        @error('email')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-6">
                                        <label for=""> Role Name <span class="text-danger">*</span></label>
                                        <select name="role_id" id="role_id" class="form-control" required>
                                            <option value="">Select</option>
                                            @foreach ($roles as $role)
                                                <option value="{{ $role->id }}">{{ $role->role_name }}</option>
                                            @endforeach
                                        </select>
                                        @error('role_id')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="col-md-6 mb-3">
                                        <label for="">User Password<span class="text-danger">*</span></label>
                                        <input type="password" class="form-control" name="password" placeholder="User Password"
                                            required>
                                        @error('password')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="">User Confirm Password<span class="text-danger">*</span></label>
                                        <input type="password" class="form-control" name="password_confirmation"
                                            placeholder="User Confirm Password" required>
                                    </div>
                                </div>

                                <div class="text-right mt-4">
                                    <button type="button" class="btn btn-info submit-btn-action">Saved</button>
                                </div>

                            </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
