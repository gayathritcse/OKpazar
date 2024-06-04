@php
    $categories = \App\Models\Category::where('status', 1)
        ->with([
            'subCategories' => function ($query) {
                $query->where('status', 1)->with([
                    'childCategories' => function ($query) {
                        $query->where('status', 1);
                    },
                ]);
            },
        ])
        ->get();
@endphp

<header>
    <div class="container">

        <div class="row">

            <div class="col-xl-12">
                <div class="relative_contect d-flex">
                    <div class="wsus_menu_category_bar ">
                        <i class="far fa-bars"></i>
                    </div>

                    <ul class="wsus_menu_cat_item show_home toggle_menu">
                        <li><a href="#"><i class="fas fa-star"></i> Hot promotions</a></li>
                        @foreach ($categories as $category)
                            <li><a class="{{ count($category->subCategories) > 0 ? 'wsus__droap_arrow' : '' }}"
                                    href="{{ route('products.index', ['category' => $category->slug]) }}"><i
                                        class="{{ $category->icon }}"></i> {{ $category->name }} </a>
                                @if (count($category->subCategories) > 0)
                                    <ul class="wsus_menu_cat_droapdown">
                                        @foreach ($category->subCategories as $subCategory)
                                            <li><a
                                                    href="{{ route('products.index', ['subcategory' => $subCategory->slug]) }}">{{ $subCategory->name }}
                                                    <i
                                                        class="{{ count($subCategory->childCategories) > 0 ? 'fas fa-angle-right' : '' }}"></i></a>
                                                @if (count($subCategory->childCategories) > 0)
                                                    <ul class="wsus__sub_category">
                                                        @foreach ($subCategory->childCategories as $childCategory)
                                                            <li><a
                                                                    href="{{ route('products.index', ['childcategory' => $childCategory->slug]) }}">{{ $childCategory->name }}</a>
                                                            </li>
                                                        @endforeach
                                                    </ul>
                                                @endif
                                            </li>
                                        @endforeach

                                    </ul>
                                @endif
                            </li>
                        @endforeach
                        <li><a href="#"><i class="fal fa-gem"></i> View All Categories</a></li>
                    </ul>


                    <div class="col-xl-2 col-9 col-md-8 col-lg-2">
                        <div class="wsus_logo_area">
                            <a class="wsus__header_logo" href="{{ url('/') }}">
                                <img src="{{ asset($logoSetting->logo) }}" alt="logo" class="img-fluid w-100">
                            </a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-4 col-lg-5 d-none d-lg-block">
                        <div class="wsus__search">
                            <form action="{{ route('products.index') }}">
                                <input type="text" placeholder="Search..." name="search"
                                    value="{{ request()->search }}">
                                <button type="submit"><i class="far fa-search"></i></button>
                            </form>
                        </div>
                    </div>

                    <ul class="wsus__menu_item wsus__menu_item_left">
                        <li><a class="{{ setActive(['home']) }}" href="{{ url('/') }}">Home</a></li>
                        <li><a class="{{ setActive(['vendor.index']) }}"
                                href="{{ route('vendor.index') }}">Vendors</a></li>
                        <li><a class="{{ setActive(['flash-sale']) }}" href="{{ route('flash-sale') }}">Flash Sale</a>
                        </li>
                        {{-- <li><a class="{{setActive(['blog'])}}" href="{{route('blog')}}">blog</a></li> --}}
                        <li><a href="{{ route('product-traking.index') }}">Track order</a></li>
                        @if (auth()->check())
                            @if (auth()->user()->role === 'user')
                                <li><a href="{{ route('user.dashboard') }}">Dashboard</a></li>
                                <li>
                                    <form method="POST" action="{{ route('logout') }}">
                                        @csrf
                                        <a href="{{route('logout')}}" onclick="event.preventDefault();
                                        this.closest('form').submit();"><i ></i>Log out</a>
                                    </form>
                                </li>
                            @elseif (auth()->user()->role === 'vendor')
                                <li><a href="{{ route('vendor.dashbaord') }}">Dashboard</a></li>
                                <li>
                                    <form method="POST" action="{{ route('logout') }}">
                                        @csrf
                                        <a href="{{route('logout')}}" onclick="event.preventDefault();
                                        this.closest('form').submit();"><i ></i>Log out</a>
                                    </form>
                                </li>
                            @elseif (auth()->user()->role === 'admin')
                                <li><a href="{{ route('admin.dashbaord') }}">Dashboard</a></li>
                                <li>
                                    <form method="POST" action="{{ route('logout') }}">
                                        @csrf
                                        <a href="{{route('logout')}}" onclick="event.preventDefault();
                                        this.closest('form').submit();"><i ></i>Log out</a>
                                    </form>
                                </li>
                            @endif
                        @else
                            <li><a href="{{ route('login') }}">Login</a></li>
                        @endif
                    </ul>

                    <ul class="wsus__icon_area">
                        <li><a href="{{ route('user.wishlist.index') }}"><i class="fal fa-heart"></i><span
                                    id="wishlist_count">
                                    @if (auth()->check())
                                        {{ \App\Models\Wishlist::where('user_id', auth()->user()->id)->count() }}
                                    @else
                                        0
                                    @endif
                                </span></a></li>
                        {{-- <li><a href="compare.html"><i class="fal fa-random"></i><span>03</span></a></li> --}}
                        <li><a class="wsus__cart_icon" href="#"><i class="fal fa-shopping-bag"></i><span
                                    id="cart-count">{{ Cart::content()->count() }}</span></a></li>
                    </ul>

                </div>
            </div>
            <div class="wsus__mini_cart">
                <h4>Shopping cart <span class="wsus_close_mini_cart"><i class="far fa-times"></i></span></h4>
                <ul class="mini_cart_wrapper">
                    @foreach (Cart::content() as $sidebarProduct)
                        <li id="mini_cart_{{ $sidebarProduct->rowId }}">
                            <div class="wsus__cart_img">
                                <a href="#"><img src="{{ asset($sidebarProduct->options->image) }}"
                                        alt="product" class="img-fluid w-100"></a>
                                <a class="wsis__del_icon remove_sidebar_product" data-id="{{ $sidebarProduct->rowId }}"
                                    href="#"><i class="fas fa-minus-circle"></i></a>
                            </div>
                            <div class="wsus__cart_text">
                                <a class="wsus__cart_title"
                                    href="{{ route('product-detail', $sidebarProduct->options->slug) }}">{{ $sidebarProduct->name }}</a>
                                <p>
                                    {{ $settings->currency_icon }}{{ $sidebarProduct->price }}
                                </p>
                                <small>Variants total:
                                    {{ $settings->currency_icon }}{{ $sidebarProduct->options->variants_total }}</small>
                                <br>
                                <small>Qty: {{ $sidebarProduct->qty }}</small>
                            </div>
                        </li>
                    @endforeach
                    @if (Cart::content()->count() === 0)
                        <li class="text-center">Your Cart Is Empty!</li>
                    @endif
                </ul>
                <div class="mini_cart_actions {{ Cart::content()->count() === 0 ? 'd-none' : '' }}">
                    <h5>Sub Total <span
                            id="mini_cart_subtotal">{{ $settings->currency_icon }}{{ getCartTotal() }}</span>
                    </h5>
                    <div class="wsus__minicart_btn_area">
                        <a class="common_btn" href="{{ route('cart-details') }}">View cart</a>
                        <a class="common_btn" href="{{ route('user.checkout') }}">Checkout</a>
                    </div>
                </div>
            </div>

</header>
