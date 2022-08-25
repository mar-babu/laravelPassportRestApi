@extends('backend.auth.auth_master')

@section('auth_title')
    Login | Admin Panel
@endsection

@section('auth-content')
    <!-- login area start -->
    <div class="login-area login-s2">
        <div class="container">
            <div class="login-box ptb--100">
                <form id="registerForm" method="POST">
                    @csrf
                    <div class="login-form-head">
                        <h4>Sign up</h4>
                        <p>Hello there, Sign up and Join with Us</p>
                    </div>
                    <div class="login-form-body">

                        @include('backend.layouts.partials.messages')

                        <div class="form-gp">
                            <label for="exampleInputName1">Full Name</label>
                            <input type="text" name="name" id="name">
                            <i class="ti-user"></i>
                            <div class="text-danger"></div>
                        </div>
                        <div class="form-gp">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" name="email" id="email">
                            <i class="ti-email"></i>
                            <div class="text-danger"></div>
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-gp">
                            <label for="exampleInputPhone1">Phone</label>
                            <input type="number" name="phone" id="phone">
                            <i class="ti-mobile"></i>
                            <div class="text-danger"></div>
                            @error('phone')
                            <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-gp">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" name="password" id="password">
                            <i class="ti-lock"></i>
                            <div class="text-danger"></div>
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-gp">
                            <label for="exampleInputPassword2">Confirm Password</label>
                            <input type="password" name="confirm_password" id="confirm_password">
                            <i class="ti-lock"></i>
                            <div class="text-danger"></div>
                            @error('confirm_password')
                            <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="submit-btn-area">
                            <button id="form_submit" type="submit">Submit <i class="ti-arrow-right"></i></button>
                            {{--<div class="login-other row mt-4">
                                <div class="col-6">
                                    <a class="fb-login" href="#">Sign up with <i class="fa fa-facebook"></i></a>
                                </div>
                                <div class="col-6">
                                    <a class="google-login" href="#">Sign up with <i class="fa fa-google"></i></a>
                                </div>
                            </div>--}}
                        </div>
                        <div class="form-footer text-center mt-5">
                            <p class="text-muted">Don't have an account? <a href="{{ route('login') }}">Sign in</a></p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- login area end -->
@endsection

@section('scripts')
    <script>
        $(document).ready(function(){
            $('#registerForm').submit(function (e) {
                e.preventDefault();
                let name = $('#name').val();
                let email = $('#email').val();
                let phone = $('#phone').val();
                let password = $('#password').val();
                let confirm_password = $('#confirm_password').val();
                let url = '{{ url('api/register') }}';

/*                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                        "Accept": "application/json"
                    }
                });*/

                $.ajax({
                    url: url,
                    type: 'POST',
//                    dataType: 'json',

                data: {
                        'name' : name,
                        'email' : email,
                        'phone' : phone,
                        'password' : password,
                        'confirm_password' : confirm_password,
                    },
                    success: function (response) {
                        if (response.error) {
                            console.log(response.error);
                        }
                        if (response.success) {
                            console.log(response.success);
                        }

                    }
                })
            })
        })
    </script>
@endsection