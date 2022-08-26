 <!-- sidebar menu area start -->

 <div class="sidebar-menu">
    <div class="sidebar-header">
        <div class="logo">
            <a href="">
                <h2 class="text-white">Admin</h2> 
            </a>
        </div>
    </div>
    <div class="main-menu">
        <div class="menu-inner">
            <nav>
                <ul class="metismenu" id="menu">

                    <li class="">
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-dashboard"></i><span>dashboard</span></a>
                        <ul class="collapse">
                            <li class="dashboard"><a href="">Dashboard</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-cart-plus"></i><span>
                            Products
                        </span></a>
                        <ul class="collapse">
                            <li class=""><a href="{{ url('product') }}">All Products</a></li>
                            <li class=""><a href="{{ url('product/create') }}">Create Product</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-tasks"></i><span>
                            Roles & Permissions
                        </span></a>
                        <ul class="collapse">
                                <li class=""><a href="{{ url('/user/role') }}">All Roles</a></li>
                                <li class=""><a href="{{ url('/user/role/create') }}">Create Role</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-user"></i><span>
                            Users
                        </span></a>
                        <ul class="collapse">
                            
                                <li class=""><a href="{{ url('/user/index') }}">All Users</a></li>

                                {{--<li class=""><a href="{{ url('/user/create') }}">Create User</a></li>--}}
                        </ul>
                    </li>

                </ul>
            </nav>
        </div>
    </div>
</div>
<!-- sidebar menu area end -->