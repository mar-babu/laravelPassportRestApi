@extends('backend.layouts.master')

@section('title')
Admins - Admin Panel
@endsection

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
                <h4 class="page-title pull-left">Admins</h4>
                <ul class="breadcrumbs pull-left">
                    <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
                    <li><span>All Products</span></li>
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
            <!-- filter start -->
            <div class="card card-danger">
                <div class="card-header">
                    <h3 class="card-title">Filter</h3>
                </div>
                <div class="card-body">
                    <form action="{{ url('/product-filter') }}" method="GET">
                        <div class="row">
                            <div class="col-2">
                                <input class="form-control" placeholder="Min Price" name="min_price" type="number">
                            </div>
                            <div class="col-2">
                                <input class="form-control" placeholder="Max Price" name="max_price" type="number">
                            </div>
                            <div class="col-2">
                                <select class="form-control search_column" name="sort">
                                    <option selected="selected" value="">Select Sort By</option>
                                    <option value="ASC">Ascending</option>
                                    <option value="DESC">Desceding</option>
                                </select>
                            </div>
                            <div class="col-2">
                                <select class="form-control search_column" name="status">
                                    <option selected="selected" value="">Select Status</option>
                                    <option value="1">Active</option>
                                    <option value="0">Inactive</option>
                                </select>
                            </div>
                            <div class="col-4">
                                <button type="submit" class="btn btn-md btn-success">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- /.card-body -->
            </div>
            <!-- filter end -->

            <div class="card">
                <div class="card-body">
                    <h4 class="header-title float-left">Products List</h4>
                    <p class="float-right mb-2">
                        <a class="btn btn-primary text-white" href="{{ url('product/create') }}">Create New Product</a>
                    </p>
                    <div class="clearfix"></div>
                    <div class="data-tables">
                        @include('backend.layouts.partials.messages')
                        <table id="dataTable" class="text-center product-table">
                            <thead class="bg-light text-capitalize">
                                <tr>
                                    <th width="5%">Sl</th>
                                    <th width="10%">Name</th>
                                    <th width="10%">Description</th>
                                    <th width="40%">Price</th>
                                    <th width="40%">Status</th>
                                    <th width="15%">Action</th>
                                </tr>
                            </thead>
                            <tbody id="productList">
                               @foreach ($products as $product)
                               <tr>
                                    <td>{{ $loop->index+1 }}</td>
                                    <td>{{ $product->name }}</td>
                                    <td>{{ $product->description }}</td>
                                    <td>{{ $product->price }}</td>
                                    <td>
                                        <span class="badge {{ $product->status == 1 ? 'badge-success' : 'badge-secondary' }} mr-1">
                                            {{ $product->status == 1 ? 'Active' : 'Inactive' }}
                                        </span>
                                    </td>
                                    <td>
                                        <a class="btn btn-success text-white" href="{{ route('product.edit', $product->id) }}">Edit</a>

                                        <a id="productDelete" class="btn btn-danger text-white" href="{{ route('product.destroy', $product->id) }}">
                                            Delete
                                        </a>
                                        <form id="delete-form-{{ $product->id }}" action="{{ route('products.destroy', $product->id) }}" method="POST" style="display: none;">
                                            @method('DELETE')
                                            @csrf
                                        </form>
                                    </td>
                                </tr>
                               @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- data table end -->
        
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
         $(document).on('click','#productDelete', function(e){
             e.preventDefault();
             let url = '{{ url('api/products/' . $product->id) }}';
             let redirect_url = '{{ url('product') }}';
             let token = $('meta[name="csrf-token"]').attr('content');
             let bearer_token = getCookie('bearerAccessToken');

             if (confirm("Are you sure to delete this Product?")) {
                 $.ajaxSetup({
                     headers: {
                         'X-CSRF-TOKEN': token,
                         'Accept': 'application/json',
                         'Authorization': 'Bearer ' + bearer_token,
                     }
                 });

                 $.ajax({
                     url: url,
                     type: 'DELETE',
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