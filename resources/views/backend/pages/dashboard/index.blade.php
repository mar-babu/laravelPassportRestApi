
@extends('backend.layouts.master')

@section('title', 'Dashboard Page - Admin Panel')

@section('content')

    <!-- page title area start -->
    <div class="page-title-area">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="breadcrumbs-area clearfix">
                    <h4 class="page-title pull-left">Dashboard</h4>
                    <ul class="breadcrumbs pull-left">
                        <li><a href="{{ url('/home') }}">Home</a></li>
                        <li><span>Dashboard</span></li>
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
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-md-6 mt-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg1">
                                <a href="{{ url('/user/role') }}">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><i class="fa fa-users"></i> Roles</div>
                                        <h2>{{ $total_roles }}</h2>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mt-md-5 mb-3">
                        <div class="card">
                            <div class="seo-fact sbg2">
                                <a href="{{ url('/user/index') }}">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon"><i class="fa fa-user"></i> Users </div>
                                        <h2>{{ $total_users }}</h2>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3 mb-lg-0">
                        <div class="card">
                            <div class="seo-fact sbg3">
                                <a href="{{ url('/user/role') }}">
                                <div class="p-4 d-flex justify-content-between align-items-center">
                                    <div class="seofct-icon">Permissions</div>
                                    <h2>{{ $total_permissions }}</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 mb-3 mb-lg-0">
                        <div class="card">
                            <div class="seo-fact sbg4">
                                <a href="{{ url('/product') }}">
                                    <div class="p-4 d-flex justify-content-between align-items-center">
                                        <div class="seofct-icon">Products</div>
                                        <h2>{{ $total_products }}</h2>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection