<?php

namespace App\Http\Middleware;

use Illuminate\Http\Request;
use Inertia\Middleware;
use Illuminate\Support\Facades\Cache;

class HandleInertiaRequests extends Middleware
{
    protected $rootView = 'app';

    public function version(Request $request): ?string
    {
        return parent::version($request);
    }

    public function share(Request $request): array
    {
        $locale = app()->getLocale();

        return [
            ...parent::share($request),
            'auth' => [
                'user' => $request->user(),
            ],
            'locale' => $locale,
            // Performance Optimization: Cache translations and load them lazily
            'translations' => function () use ($locale) {
                return Cache::remember("translations_{$locale}", 3600, function () {
                    return __('portfolio');
                });
            },
        ];
    }
}
