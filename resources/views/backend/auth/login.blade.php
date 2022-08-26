@extends('backend.auth.auth_master')

@section('auth_title')
    Login | Admin Panel
@endsection

@section('auth-content')
    <!-- login area start -->
    <div class="login-area login-s2">
        <div class="container">
            <div class="login-box ptb--100">
                <form id="loginForm" method="POST">
                    @csrf
                    <div class="login-form-head">
                        <h4>Sign In</h4>
                        <p>Hello there, Sign in and start managing your Product Management System</p>
                    </div>
                    <div class="login-form-body">

                        @include('backend.layouts.partials.messages')

                        <div class="form-gp">
                            <label for="email">Email address</label>
                            <input type="email" class="@error('email') is-invalid @enderror" name="email" id="email">
                            <i class="ti-email"></i>
                            <div class="text-danger"></div>
                            @error('email')
                            <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="form-gp">
                            <label for="password">Password</label>
                            <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" id="password">
                            <i class="ti-lock"></i>
                            <div class="text-danger"></div>
                            @error('password')
                            <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                        <div class="row mb-4 rmber-area">
{{--                            <div class="col-6">
                                <div class="custom-control custom-checkbox mr-sm-2">
                                    <input type="checkbox" class="custom-control-input" id="customControlAutosizing">
                                    <label class="custom-control-label" for="customControlAutosizing">Remember Me</label>
                                </div>
                            </div>
                            <div class="col-6 text-right">
                                <a href="#">Forgot Password?</a>
                            </div>--}}
                        </div>
                        <div class="submit-btn-area">
                            <button id="form_submit" type="submit">Submit <i class="ti-arrow-right"></i></button>
                        </div>
                        <div class="form-footer text-center mt-5">
                            <p class="text-muted">Don't have an account? <a href="{{ route('registration') }}">Sign up</a></p>
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
            $('#loginForm').submit(function (e) {
                e.preventDefault();
//                let name = $('#name').val();
                let email = $('#email').val();
//                let phone = $('#phone').val();
                let password = $('#password').val();
                let url = '{{ url('api/login') }}';
                let redirect_url = '{{ url('/home') }}';

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                        "Accept": "application/json",
                    }
                });

                $.ajax({
                    url: url,
                    type: 'POST',
                    dataType: 'json',

                    data: {
//                        'name' : name,
                        'email' : email,
//                        'phone' : phone,
                        'password' : password,
                    },
                    success: function (data) {
                            console.log('Logged In!!');
//                            console.log(data);
                            setCookie('bearerAccessToken', data.token);
                            window.location = redirect_url;
                    }, error: function (data) {
                        console.log(data.message);
                    }
                })
            })
        })
    </script>
@endsection