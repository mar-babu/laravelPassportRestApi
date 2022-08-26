@extends('backend.layouts.master')

@section('title')
    Admin Create - Admin Panel
@endsection

@section('styles')
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />

    <style>
        .form-check-label {
            text-transform: capitalize;
        }
    </style>
@endsection


@section('content')

    <!-- page title area start -->
    <div class="page-title-area">
        <div class="row align-items-center">
            <div class="col-sm-6">
                <div class="breadcrumbs-area clearfix">
                    <h4 class="page-title pull-left">Admin Product</h4>
                    <ul class="breadcrumbs pull-left">
                        <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                        <li><a href="">All Products</a></li>
                        <li><span>Create Product</span></li>
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
                        <h4 class="header-title">Create New Product</h4>

                        @include('backend.layouts.partials.messages')

                        <form id="productStore" method="POST">
                            @csrf
                            <div class="form-row">
                                <div class="form-group col-md-6 col-sm-12">
                                    <label for="name">Product Name</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Product Name">
                                </div>
                                <div class="form-group col-md-6 col-sm-12">
                                    <label for="description">Product Description</label>
                                    <input type="text-area" class="form-control" id="description" name="description" placeholder="Enter Product Description">
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="form-group col-md-6 col-sm-12">
                                    <label for="price">Product Price</label>
                                    <input type="number" class="form-control" id="price" name="price" placeholder="Product Price">
                                </div>
                                <div class="form-group col-md-6 col-sm-6">
                                    <label for="status" class="col-form-label">Product Status</label>
                                    <select name="status" id="status" class="form-control select2">
                                            <option>Select Status</option>
                                            <option value="1">Active</option>
                                            <option value="0">Inactive</option>
                                    </select>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary mt-4 pr-4 pl-4">Save Product</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- data table end -->

        </div>
    </div>
@endsection

@section('scripts')
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script>
        $(document).ready(function() {
            $('.select2').select2();
        })
    </script>

    <script>
        $(document).ready(function(){
            $('#productStore').submit(function (e) {
                e.preventDefault();
                let name = $('#name').val();
                let description = $('#description').val();
                let price = $('#price').val();
                let status = $('#status').val();
                let url = '{{ url('api/products') }}';
                let token = $('meta[name="csrf-token"]').attr('content');
                let bearer_token = getCookie('bearerAccessToken');

//                console.log(bearer_token);

                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': token,
                        'Accept': 'application/json',
                        'Authorization': 'Bearer ' + bearer_token,
                    }
                });

                $.ajax({
                    url: url,
                    type: 'POST',
                    dataType: 'json',

                    data: {
                        'name' : name,
                        'description' : description,
                        'price' : price,
                        'status' : status,
                    },
                    success: function (data) {
                        console.log('Product Successfully Created!!');
//                        console.log(data);
//                        window.location = redirect_url;
                    }, error: function (data) {
                        console.log(data.message);
                    }

            })
            })
        })
    </script>
@endsection