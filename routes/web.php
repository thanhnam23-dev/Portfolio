<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;

// Language switching route
Route::get('/language/{locale}', function ($locale) {
    if (!in_array($locale, ['en', 'vi'])) {
        $locale = 'en';
    }
    session(['locale' => $locale]);
    return redirect()->back();
})->name('language.switch');

Route::get('/', function () {
    return Inertia::render('Portfolio');
})->name('portfolio');

Route::get('/dashboard', function () {
    return Inertia::render('Dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__ . '/auth.php';
