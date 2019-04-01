@extends('layout.app')

@section('contents')
{{-- Login page CSS --}}
<link href="{{ asset('css/app.css') }}" rel="stylesheet">
<div class="container">
    <div class="row" style="margin:4rem 0;">
        <div class="col-md-8 col-md-offset-3">
            <div class="card">
                <div class="card-header">Verify Your Email Address</div>

                <div class="card-body">
                    @if (session('resent'))
                        <div class="alert alert-success" role="alert">
                            A fresh verification link has been sent to your email address.
                        </div>
                    @endif

                    Before proceeding, please check your email for a verification link.
                    If you did not receive the email, <a href="{{ route('customer.verification.resend') }}">click here to request another</a>.
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
