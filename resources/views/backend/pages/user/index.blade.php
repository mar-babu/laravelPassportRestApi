@extends('backend.layouts.master')

@section('title', 'User List')

@section('content')
    <!-- page title area start -->
    <div class="page-title-area">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="breadcrumbs-area clearfix">
                    <h4 class="page-title pull-left">Create User</h4>
                    <ul class="breadcrumbs pull-left">
                        <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                        <li><a href="{{ url('/user/index') }}">All Users</a></li>
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
                        <h4 class="header-title float-left">User List</h4>
                        <p class="float-right mb-2">
                            @if (permission('u2'))
                                <a class="btn btn-primary text-white" href="{{ url('/user/create') }}">Create New User</a>
                            @endif
                        </p>
                        <div class="clearfix"></div>
                        <div class="data-tables">
                            @include('backend.layouts.partials.messages')

                            <table id="dataTable" class="table table-bordered table-hover mt-4" cellspacing="0" width="100%">
                                <thead class="theme-primary text-dark">
                                    <tr>
                                        <th>Sl</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th>Role</th>
                                        {{--@if (permission('u4'))--}}
                                            <th>Status</th>
                                        {{--@endif--}}
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    @foreach ($users as $user)
                                        <tr>
                                            <td>{{ $loop->index + 1 }}</td>
                                            <td>{{ $user->name }}</td>
                                            <td>{{ $user->email }}</td>
                                            <td>{{ $user->phone }}</td>
                                            <td>{{ $user?->userPermission?->role?->role_name }}</td>
                                            {{--@if (permission('u4'))--}}
                                                <td>
                                                    @if ($user->status)
                                                        <a href="{{ route('user.status', $user->id) }}"><span
                                                                class="badge badge-success">Active</span></a>
                                                    @else
                                                        <a href="{{ route('user.status', $user->id) }}"><span
                                                                class="badge badge-danger">Inactive</span></a>
                                                    @endif
                                                </td>
                                            {{--@endif--}}
                                            <td>
                                                <div class="btn-group">
                                                    @if (permission('u3'))
                                                        <a href="{{ route('user.edit', $user->id) }}"
                                                            class="btn btn-success btn-sm"><i class="fa fa-edit"></i></a>
                                                    @endif
                                                    @if (permission('u4'))
                                                        <a href="{{ route('user.destroy', $user->id) }}" id="delete"
                                                            class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></a>
                                                    @endif
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach

                                </tbody>

                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection
