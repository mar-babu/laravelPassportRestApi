@extends('backend.layouts.master')

@section('title', 'Role')

@section('styles')
    <!-- Start datatable css -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
@endsection

@section('content')
    <!-- page title area start -->
    <div class="page-title-area">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="breadcrumbs-area clearfix">
                    <h4 class="page-title pull-left">Create Role</h4>
                    <ul class="breadcrumbs pull-left">
                        <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                        <li><a href="{{ url('user/role') }}">All Role</a></li>
                        <li><span>Create Role</span></li>
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
                        <h4 class="header-title float-left">Role List</h4>
                        <p class="float-right mb-2">
                            @if (permission('ro2'))
                            <a class="btn btn-primary text-white" href="{{ url('/user/role/create') }}">Create New Role</a>
                            @endif
                        </p>
                        <div class="clearfix"></div>
                        <div class="data-tables">
                            @include('backend.layouts.partials.messages')
                            <table id="dataTable" class="text-center product-table">
                                <thead class="dark text-capitalize">
                                <tr>
                                    <th width="1%">Sl</th>
                                    <th width="2%">Name</th>
                                    <th width="2%">Action</th>
                                </tr>
                                </thead>
                                <tbody id="productList">
                                @foreach ($roles as $role)
                                    <tr>
                                        <td>{{ $loop->index+1 }}</td>
                                        <td>{{ $role->role_name }}</td>
                                        <td>
                                            {{--@if ($role->role_name != 'Salesman')--}}
                                            @if (!permission('ro2'))
                                            <a class="btn btn-success text-white" href="{{ route('role.edit', $role->id) }}">Edit</a>
                                            @endif
                                            @if (!permission('ro3'))
                                            <a id="roleDelete" class="btn btn-danger text-white">
                                                Delete
                                            </a>
                                            @endif
                                            {{--@endif--}}
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

@section('scripts')
    <!-- Start datatable js -->
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>

    <script>
        /*================================
       datatable active
       ==================================*/
        if ($('#dataTable').length) {
            $('#dataTable').DataTable({
                responsive: true
            });
        }

    </script>

    <script>
        $(document).on('click','#roleDelete', function(e){
            e.preventDefault();
            let url = '{{ url('/user/role/' . $role->id . '/destroy') }}';
            let redirect_url = '{{ url('/user/role') }}';

            if (confirm("Are you sure to delete this Role?")) {

                $.ajax({
                    url: url,
                    type: 'GET',
                    dataType: 'json',
                    success: function (res) {
                        console.log('Product Successfully Deleted!!');
                        console.log(res.message);
                        window.location = redirect_url;
                    }, error: function (res) {
                        console.log(res.message);
                    }
                });
            }
        });
    </script>
@endsection
