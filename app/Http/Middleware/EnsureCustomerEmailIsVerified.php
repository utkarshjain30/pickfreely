<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Contracts\Auth\MustVerifyEmail;

class EnsureCustomerEmailIsVerified
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request $request
     * @param  \Closure $next
     * @return \Illuminate\Http\Response
     */
    protected $routeMiddleware = [
        // ...
        'customer.verified' => \App\Http\Middleware\EnsureCustomerEmailIsVerified::class,
    ];
    public function handle($request, Closure $next)
    {
        if (!$request->user('customer') || ($request->user('customer') instanceof MustVerifyEmail && !$request->user('customer')->hasVerifiedEmail())) {
            return Redirect::route('customer.verification.notice');
        }

        return $next($request);
    }
}
