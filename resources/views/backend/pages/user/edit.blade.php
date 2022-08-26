@extends('backend.layouts.master')

@section('title', 'User Edit')

@section('content')
    <!-- page title area start -->
    <div class="page-title-area">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="breadcrumbs-area clearfix">
                    <h4 class="page-title pull-left">User Update</h4>
                    <ul class="breadcrumbs pull-left">
                        <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                        <li><a href="{{ url('/user/index') }}">All User</a></li>
                        <li><span>User Update</span></li>
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
                        <h4 class="header-title">User Update</h4>
                        @include('backend.layouts.partials.messages')

                        <form id="userUpdate" method="PUT">
                            @csrf
                            <input type="hidden" name="id" value="{{ $user->id }}">
                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="">User Name<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="name" value="{{ $user->name }}"
                                        placeholder="User Name" required id="name">
                                    @error('name')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">Mobile Number<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="phone" value="{{ $user->phone }}"
                                        placeholder="Mobile Number" required id="phone">
                                    @error('phone')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="col-md-6 mt-3">
                                    <label for="">User Email <span class="text-danger">*</span></label>
                                    <input type="email" class="form-control" name="email" value="{{ $user->email }}"
                                        placeholder="User Email" required id="email">
                                    @error('email')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-6">
                                    <label for="">User Role <span class="text-danger">*</span></label>
                                    <select name="role_id" id="role_id" class="form-control">
                                        <option value="">Select</option>
                                        @foreach ($roles as $role)
                                            <option value="{{ $role->id }}"
                                                {{ $user?->userPermission?->role_id == $role?->id ? 'selected' : '' }}
                                            >
                                                {{ $role->role_name }}</option>
                                        @endforeach
                                    </select>
                                    @error('role_id')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>

                                <div class="col-md-12 mb-3">
                                    <label for=""> Password <span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" name="password" placeholder="User Password" id="password">
                                    @error('password')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>

                            <div class="text-right mt-4">
                                <button type="button" class="btn btn-info submit-btn-action">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $(document).ready(function(){
            $('#userUpdate').submit(function (e) {
                e.preventDefault();
                let name = $('#name').val();
                let phone = $('#phone').val();
                let email = $('#email').val();
                let role_id = $('#role_id').val();
                let password = $('#password').val();
                let url = '{{ url('user/update') }}';
                let redirect_url = '{{ url('/user/index') }}';

                $.ajax({
                    url: url,
                    type: 'PUT',
                    dataType: 'json',

                    data: {
                        '_token': '{{ csrf_token() }}',
                        'name' : name,
                        'phone' : phone,
                        'email' : email,
                        'role_id' : role_id,
                        'password' : password,
                    },
                    success: function (data) {
                        console.log('User Successfully Updated!!');
//                        console.log(data);
                        window.location = redirect_url;
                    }, error: function (data) {
                        console.log(data.message);
                    }

                })
            })
        })
    </script>
@endsection
