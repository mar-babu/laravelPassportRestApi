@extends('backend.layouts.master')

@section('title', 'Permission - Admin Panel')

@section('style')
    <style>

        .checkbox label::after{
            width: 17px;
            height: 17px;
            padding-top: 0;
        }

    </style>
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
                    <li><a href="{{ url('product') }}">All Products</a></li>
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
                    <h4 class="header-title">Create New Role</h4>

                    @include('backend.layouts.partials.messages')
                    <form action="{{ url('/user/role/store') }}" method="POST" id="new-roll">
                        @csrf

                        <div class="mt-3">
                            <div class="form-group">
                                <label for="">Role Create</label>
                                <input type="text" name="role_name" class="form-control" placeholder="Role Name" required>
                            </div>
                            <br>
                            <div class="mb-3">

                                <label class="custom-checkbox">
                                <div class="checkbox checkbox-pink">
                                    <input onchange="selectAll()" id="select-all" type="checkbox" class="checkbox-input" class="checkbox-input"value="1" data-parsley-multiple="groups" data-parsley-mincheck="2" data-parsley-id="69">
                                    <label for="select-all"> Select All Permission </label>
                                </div>
                            </label>

                            </div>

                            <div class="row">

                                <div class="col-md-6">
                                    <div class="">
                                        <div id="accordion" role="tablist" aria-multiselectable="true" class="">
                                            <div class="card">
                                                <div class="card-header" data-toggle="collapse" data-parent="#accordion"
                                                    href="#dashboard" aria-expanded="true" aria-controls="dashboard" role="tab"
                                                    id="headingTwo">
                                                    <h5 class="mb-0 mt-0">
                                                        <a class="text-dark">
                                                            Dashboard
                                                        </a>
                                                    </h5>
                                                </div>
                                                <div id="dashboard" class="collapse show" role="tabpanel"
                                                    aria-labelledby="headingTwo">
                                                    <div class="card-body">
                                                        <div class="mt-2">
                                                            <label class="custom-control custom-checkbox">
                                                                <div class="checkbox checkbox-pink">
                                                                    <input id="dashboardinput" type="checkbox" class="checkbox-input"
                                                                        name="permissions[]" value="dashboard"
                                                                        data-parsley-multiple="groups" data-parsley-mincheck="2"
                                                                        data-parsley-id="69" >
                                                                    <label for="dashboardinput"> Dashboard </label>
                                                                </div>
                                                            </label>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div id="accordion" role="tablist" aria-multiselectable="true" class="m-b-30">
                                        <div class="card">
                                            <div class="card-header" data-toggle="collapse" data-parent="#product"
                                                href="#product" aria-expanded="false" aria-controls="product" role="tab"
                                                id="headingTwo">
                                                <h5 class="mb-0 mt-0">
                                                    <a class="text-dark">
                                                        Product
                                                    </a>
                                                    <input type="checkbox" class="checkbox-input" id="product" value="pro" name="permissions[]"
                                                        style="display: none;">
                                                </h5>
                                            </div>
                                            <div id="product" class="collapse show" role="tabpanel"
                                                aria-labelledby="headingTwo">
                                                <div class="card-body">
                                                    <div class="mt-2">
                                                        <label class="custom-control custom-checkbox">
                                                            <div class="checkbox checkbox-pink">
                                                                <input type="hidden" id="product" name="permissions[]">
                                                                <input id="checkboxp1" type="checkbox" class="checkbox-input"
                                                                    onclick="setValue('product','pro')" name="permissions[]"
                                                                    value="p1" data-parsley-multiple="groups"
                                                                    data-parsley-mincheck="2" data-parsley-id="69">
                                                                <label for="checkboxp1"> List </label>
                                                            </div>
                                                        </label>
                                                        <label class="custom-control custom-checkbox">
                                                            <div class="checkbox checkbox-pink">
                                                                <input id="checkboxp2" onclick="setValue('product','pro')"
                                                                    type="checkbox" class="checkbox-input" name="permissions[]" value="p2"
                                                                    data-parsley-multiple="groups" data-parsley-mincheck="2"
                                                                    data-parsley-id="69">
                                                                <label for="checkboxp2"> Add </label>
                                                            </div>
                                                        </label>
                                                        <label class="custom-control custom-checkbox">
                                                            <div class="checkbox checkbox-pink">
                                                                <input id="checkboxp3" onclick="setValue('product','pro')"
                                                                    type="checkbox" class="checkbox-input" name="permissions[]" value="p3"
                                                                    data-parsley-multiple="groups" data-parsley-mincheck="2"
                                                                    data-parsley-id="69">
                                                                <label for="checkboxp3"> Edit </label>
                                                            </div>
                                                        </label>
                                                        <label class="custom-control custom-checkbox">
                                                            <div class="checkbox checkbox-pink">
                                                                <input id="checkboxp4" onclick="setValue('product','pro')"
                                                                    type="checkbox" class="checkbox-input" name="permissions[]" value="p4"
                                                                    data-parsley-multiple="groups" data-parsley-mincheck="2"
                                                                    data-parsley-id="69">
                                                                <label for="checkboxp4"> Delete </label>
                                                            </div>
                                                        </label>
                                                        <label class="custom-control custom-checkbox">
                                                            <div class="checkbox checkbox-pink">
                                                                <input id="checkboxac" onclick="setValue('product','pro')"
                                                                    type="checkbox" class="checkbox-input" name="permissions[]" value="pad1"
                                                                    data-parsley-multiple="groups" data-parsley-mincheck="2"
                                                                    data-parsley-id="69">
                                                                <label for="checkboxac"> Active/Inactive </label>
                                                            </div>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="" style="margin-top: -18px">
                                        <div id="accordion" role="tablist" aria-multiselectable="true" class="m-b-30">
                                            <div class="card">
                                                <div class="card-header" data-toggle="collapse" data-parent="#accordion"
                                                    href="#User" aria-expanded="false" aria-controls="User" role="tab"
                                                    id="headingTwo">
                                                    <h5 class="mb-0 mt-0">
                                                        <a class="text-dark">
                                                            User
                                                        </a>
                                                        <input type="checkbox" class="checkbox-input" id="user" value="user" name="permissions[]"
                                                            style="display: none;">
                                                    </h5>
                                                </div>
                                                <div id="User" class="collapse show" role="tabpanel"
                                                    aria-labelledby="headingTwo">
                                                    <div class="card-body">
                                                        <div class="mt-2">
                                                            <label class="custom-control custom-checkbox">
                                                                <div class="checkbox checkbox-pink">
                                                                    <input type="hidden" name="permissions[]" id="user">
                                                                    <input id="checkboxu1" name="permissions[]"
                                                                        onclick="setValue('user','user')" value="u1"
                                                                        type="checkbox" class="checkbox-input" data-parsley-multiple="groups"
                                                                        data-parsley-mincheck="2" data-parsley-id="69">
                                                                    <label for="checkboxu1"> List </label>
                                                                </div>
                                                            </label>
                                                            <label class="custom-control custom-checkbox">
                                                                <div class="checkbox checkbox-pink">
                                                                    <input id="checkboxu11" name="permissions[]"
                                                                        onclick="setValue('user','user')" value="u2"
                                                                        type="checkbox" class="checkbox-input" data-parsley-multiple="groups"
                                                                        data-parsley-mincheck="2" data-parsley-id="69">
                                                                    <label for="checkboxu11"> Create </label>
                                                                </div>
                                                            </label>
                                                            <label class="custom-control custom-checkbox">
                                                                <div class="checkbox checkbox-pink">
                                                                    <input id="checkboxu3" name="permissions[]"
                                                                        onclick="setValue('user','user')" value="u3"
                                                                        type="checkbox" class="checkbox-input" data-parsley-multiple="groups"
                                                                        data-parsley-mincheck="2" data-parsley-id="69">
                                                                    <label for="checkboxu3"> Edit </label>
                                                                </div>
                                                            </label>
                                                            <label class="custom-control custom-checkbox">
                                                                <div class="checkbox checkbox-pink">
                                                                    <input id="checkboxu4" name="permissions[]"
                                                                        onclick="setValue('user','user')" value="u4"
                                                                        type="checkbox" class="checkbox-input" data-parsley-multiple="groups"
                                                                        data-parsley-mincheck="2" data-parsley-id="69">
                                                                    <label for="checkboxu4"> Delete </label>
                                                                </div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="" style="margin-top: -18px">
                                        <div id="accordion" role="tablist" aria-multiselectable="true" class="m-b-30">
                                            <div class="card">
                                                <div class="card-header" data-toggle="collapse" data-parent="#accordion"
                                                     href="#Role" aria-expanded="false" aria-controls="Role" role="tab"
                                                     id="headingTwo">
                                                    <h5 class="mb-0 mt-0">
                                                        <a class="text-dark">
                                                            Role Create
                                                        </a>
                                                        <input type="checkbox" class="checkbox-input" id="role" value="role" name="permissions[]"
                                                               style="display: none;">
                                                    </h5>
                                                </div>
                                                <div id="Role" class="collapse show" role="tabpanel"
                                                     aria-labelledby="headingTwo">
                                                    <div class="card-body">
                                                        <div class="mt-2">
                                                            <label class="custom-control custom-checkbox">
                                                                <div class="checkbox checkbox-pink">
                                                                    <input id="checkboxro1" name="permissions[]"
                                                                           onclick="setValue('user','user')" value="ro1"
                                                                           type="checkbox" class="checkbox-input" data-parsley-multiple="groups"
                                                                           data-parsley-mincheck="2" data-parsley-id="69">
                                                                    <label for="checkboxro1"> List </label>
                                                                </div>
                                                            </label>
                                                            <label class="custom-control custom-checkbox">
                                                                <div class="checkbox checkbox-pink">
                                                                    <input id="checkboxroo1" name="permissions[]"
                                                                           onclick="setValue('user','user')" value="ro2"
                                                                           type="checkbox" class="checkbox-input" data-parsley-multiple="groups"
                                                                           data-parsley-mincheck="2" data-parsley-id="69">
                                                                    <label for="checkboxroo1"> Create </label>
                                                                </div>
                                                            </label>
                                                            <label class="custom-control custom-checkbox">
                                                                <div class="checkbox checkbox-pink">
                                                                    <input id="checkboxro3" name="permissions[]"
                                                                           onclick="setValue('user','user')" value="ro3"
                                                                           type="checkbox" class="checkbox-input" data-parsley-multiple="groups"
                                                                           data-parsley-mincheck="2" data-parsley-id="69">
                                                                    <label for="checkboxro3"> Delete </label>
                                                                </div>
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="text-right mt-5">
                                <button type="submit" class="btn btn-success">Save</button>
                            </div>

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
        function selectAll() {
          let status = $('#select-all').val();
          if(status==1){
                $('.checkbox-input').each(function(){
                $(".checkbox-input").prop('checked', true);
                })
                $('#select-all').val(2);
            }else{
                $('.checkbox-input').each(function(){
                $(".checkbox-input").prop('checked', false);
                })
                $('#select-all').val(1);
            }

        }
        function setValue(id, val) {
            $(`#${id}`).attr("checked", "checked");
        }
    </script>

@endsection
