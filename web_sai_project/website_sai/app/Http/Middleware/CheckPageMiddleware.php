<?php

namespace App\Http\Middleware;

use Closure;
use App\Check;

class CheckPageMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $page = Check::where('name', '=', 'Primary')->first();
        if ($page->document_page=='Down') {
            return redirect('/home');
        }
        else{
            return $next($request);
        }
    }
}
