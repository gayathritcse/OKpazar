@extends('frontend.layouts.master')

@section('title')
    {{ $settings->site_name }} || Payment
@endsection

@section('content')
    {{-- BREADCRUMB START --}}

    <section id="wsus__breadcrumb">
        <div class="wsus_breadcrumb_overlay">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h4>payment</h4>
                        <ul>
                            <li><a href="{{ route('home') }}">home</a></li>
                            <li><a href="javascript:;">payment</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>

    {{-- BREADCRUMB END --}}

    {{-- PAYMENT PAGE START --}}
    <section id="wsus__cart_view">
        <div class="container">
            <div class="wsus__pay_info_area">
                <div class="row">
                    <div class="col-xl-4 col-lg-4">
                        <div class="wsus__pay_booking_summary" id="sticky_sidebar2">
                            <h5>Order Summary</h5>
                            <p>subtotal : <span>{{ $settings->currency_icon }}{{ getCartTotal() }}</span></p>
                            <p>shipping fee(+) : <span>{{ $settings->currency_icon }}{{ getShppingFee() }}</span></p>
                            <p>coupon(-) : <span>{{ $settings->currency_icon }}{{ getCartDiscount() }}</span></p>
                            <h6>total <span>{{ $settings->currency_icon }}{{ getFinalPayableAmount() }}</span></h6><br>
                            <a class="nav-link common_btn text-center" href="{{ route('user.paypal.payment') }}">Pay with Paypal</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
    </section>
    {{-- PAYMENT PAGE END --}}
@endsection
