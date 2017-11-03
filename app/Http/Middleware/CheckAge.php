<?php

namespace App\Http\Middleware;

use App\User;
use Carbon\Carbon;
use Closure;

class CheckAge
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

        $age = Carbon::createFromDate(

            request('year'), request('month'), request('day'), 'Europe/Belgrade'

            )->diffInYears(Carbon::now());

        if ($age < 18) {
            return redirect('forbidden');
        }

        return $next($request);
    }
}
