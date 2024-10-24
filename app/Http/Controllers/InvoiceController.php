<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Product;
use App\Models\Invoice;
use App\Models\InvoiceItem;

use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Support\Facades\App;
use Dompdf\Dompdf;

class InvoiceController extends Controller
{
    public function create()
    {
        $products = Product::all();
        return view('invoice.create', compact('products'));
    }


    public function store(Request $request)
    {
        // Calculate total amount from the request
        $totalAmount = 0;
    
        // Loop through the products and calculate total amount
        foreach ($request->quantity as $index => $quantity) {
            $productPrice = $request->price[$index]; // Get the price for the product
            $totalAmount += $quantity * $productPrice; // Update the total amount
        }
    
        // Create the invoice with the calculated total amount
        $invoice = Invoice::create([
            'invoice_number' => uniqid('INV-'),
            'date' => now(),
            'total_amount' => $totalAmount, // Set the calculated total amount
        ]);
    
        // Store the invoice items
        foreach ($request->product_id as $index => $product_id) {
            InvoiceItem::create([
                'invoice_id' => $invoice->id,
                'product_id' => $product_id,
                'quantity' => $request->quantity[$index],
                'price' => $request->price[$index],
            ]);
        }
    
        return redirect()->route('invoice.pdf', $invoice->id);
    }



//     public function generatePDF($id)
// {
//     $invoice = Invoice::with('items.product')->findOrFail($id);

//     $pdf = PDF::loadView('invoice.pdf', compact('invoice'));
//     return $pdf->download('invoice-' . $invoice->invoice_number . '.pdf');
// }


public function generatePDF($id)
{
    // Retrieve the invoice details
    $invoice = Invoice::with('items')->findOrFail($id); // Assuming you have an 'items' relationship

    // Load the view and pass the invoice data
    $pdf = App::make('dompdf.wrapper');
    $pdf->loadView('invoice.pdf', compact('invoice'));

    // Stream the PDF to the browser
    return $pdf->stream('invoice.pdf');
}





}
