@extends('layout.app')
@section('contents')
<!-- My Account Area -->
<div class="my-account-area">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="my-account-title">
					<h2>Login or Create an Account</h2>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<div class="new-customers customer">
					<div class="customer-inner">
						<div class="user-title">
							<h2><i class="fa fa-file"></i>New Customers</h2>
						</div>
						<div class="user-content">
							<p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
						</div>					
					<form method="POST" action="{{ route('customer.register') }}" aria-label="{{ __('Register') }}">
							@csrf
	
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }}</label>
	
								<div class="col-md-6">
									<input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}" name="name" value="{{ old('name') }}" required autofocus>
	
									@if ($errors->has('name'))
										<span class="invalid-feedback" role="alert">
											<strong>{{ $errors->first('name') }}</strong>
										</span>
									@endif
								</div>
							</div>
	
							<div class="form-group row">
								<label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>
	
								<div class="col-md-6">
									<input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required>
	
									@if ($errors->has('email'))
										<span class="invalid-feedback" role="alert">
											<strong>{{ $errors->first('email') }}</strong>
										</span>
									@endif
								</div>
							</div>
	
							<div class="form-group row">
								<label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>
	
								<div class="col-md-6">
									<input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>
	
									@if ($errors->has('password'))
										<span class="invalid-feedback" role="alert">
											<strong>{{ $errors->first('password') }}</strong>
										</span>
									@endif
								</div>
							</div>
	
							<div class="form-group row">
								<label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }}</label>
	
								<div class="col-md-6">
									<input id="password-confirm" type="password" class="form-control" name="password_confirmation" required>
								</div>
							</div>
	
							<div class="form-group row mb-0">
								<div class="col-md-6 offset-md-4">
									<button type="submit" class="btn">
										{{ __('Register') }}
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-sm-6">
				<div class="resestered-customers customer">
					<div class="customer-inner">
						<div class="user-title">
							<h2><i class="fa fa-file-text"></i>Registered  Customers</h2>
						</div>
						<div class="user-content">
							<p>If you have an account with us, please log in.</p>
						</div>
						<div class="account-form">
							<form class="form-horizontal product-form" action="{{ route('customer.login') }}" method="post">
								@csrf
								<div class="form-goroup">
									<label>{{ __('E-Mail Address') }}<sup>*</sup></label>
									<input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" required autofocus>

									<input id="url" type="text" class="" name="prev_url" value="{{str_replace(url('/'), '', url()->previous())}}" hidden>

									@if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                	@endif
									
								</div>
								<div class="form-goroup">
									<label>Password <sup>*</sup></label>
									<input id="password" type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

									@if ($errors->has('password'))
										<span class="invalid-feedback" role="alert">
											<strong>{{ $errors->first('password') }}</strong>
										</span>
									@endif

								</div>
								<div class="form-group row">
									<div class="col-md-6 offset-md-4">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

											<label class="form-check-label" for="remember">
												{{ __('Remember Me') }}
											</label>
										</div>
									</div>
								</div>

								<div class="user-bottom fix">
									<a href="{{ route('customer.password.request') }}">Forgot Your Password?</a>
									<button type="submit" class="btn">
											{{ __('Login') }}
									</button>
								</div>
							</form>
						</div>
						<p class="reauired-fields floatright"><sup>*</sup> Required Fields</p>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</div><!-- End My Account Area -->

		
@endsection

