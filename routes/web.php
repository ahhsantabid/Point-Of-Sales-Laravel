<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\InvoiceController;


Route::get('/', function () {
    return view('welcome');
});

Route::get('/invoice/create', [InvoiceController::class, 'create']);
Route::post('/invoice/store', [InvoiceController::class, 'store']);

Route::get('/invoice/{id}/pdf', [InvoiceController::class, 'generatePDF'])->name('invoice.pdf');


