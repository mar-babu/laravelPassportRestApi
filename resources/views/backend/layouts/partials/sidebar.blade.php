 <!-- sidebar menu area start -->

 <div class="sidebar-menu">
    <div class="sidebar-header">
        <div class="logo">
            <a href="#">
                <h2 class="text-white">Admin</h2> 
            </a>
        </div>
    </div>
    <div class="main-menu">
        <div class="menu-inner">
            <nav>
                <ul class="metismenu" id="menu">
                    @if (permission('dashboard'))
                    <li class="">
                        <a href="javascript:void(0)" aria-expanded="true"><i class="ti-dashboard"></i><span>dashboard</span></a>
                        <ul class="collapse">
                            <li class="dashboard"><a href="{{ url('/home') }}">Dashboard</a></li>
                        </ul>
                    </li>
                    @endif

                    @if (permission('pro') || permission('p1') || permission('p2'))
                    <li>
                        <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-cart-plus"></i><span>
                            Products
                        </span></a>
                        <ul class="collapse">
                            @if (permission('p1'))
                            <li class=""><a href="{{ url('product') }}">All Products</a></li>
                            @endif
                            @if (permission('p2'))
                            <li class=""><a href="{{ url('product/create') }}">Create Product</a></li>
                            @endif
                        </ul>
                    </li>
                    @endif

                    @if (permission('role') || permission('ro1') || permission('ro2'))
                    <li>
                        <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-tasks"></i><span>
                            Roles & Permissions
                        </span></a>
                        <ul class="collapse">
                            @if (permission('ro1'))
                            <li class=""><a href="{{ url('/user/role') }}">All Roles</a></li>
                            @endif
                            @if (permission('ro2'))
                                <li class=""><a href="{{ url('/user/role/create') }}">Create Role</a></li>
                            @endif
                        </ul>
                    </li>
                    @endif

                    @if (permission('user') || permission('u1') || permission('u2'))
                        <li>
                        <a href="javascript:void(0)" aria-expanded="true"><i class="fa fa-user"></i><span>
                            Users
                        </span></a>
                        <ul class="collapse">
                            @if (permission('u1'))
                            <li class=""><a href="{{ url('/user/index') }}">All Users</a></li>
                            @endif
                            @if (permission('u2'))
                            <li class=""><a href="{{ url('/user/create') }}">Create User</a></li>
                            @endif
                        </ul>
                    </li>
                    @endif

                </ul>
            </nav>
        </div>
    </div>
</div>
<!-- sidebar menu area end -->