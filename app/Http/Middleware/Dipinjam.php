<?php

namespace App\Http\Middleware;

use App\Models\Peminjaman;
use Closure;
use Illuminate\Http\Request;

class Dipinjam
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
        $id = request()->id;
        if(Peminjaman::where('buku_id', $id)->where('user_id', auth()->user()->id)->where('status', 'dipinjam')->get()->first()){

            return $next($request);
        }
        abort(403);
    }
}
