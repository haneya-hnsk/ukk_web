<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class RedirectLogin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        if(auth()->user()->level != 'member'){
            return redirect('/librarian/buku');
        }

        if(auth()->user()->level == 'member'){
            return redirect('/buku');

        }
        return $next($request);
    }
}
