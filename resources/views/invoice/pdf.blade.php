<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    
    <!DOCTYPE html>
    <html>
    <head>

        <h2 class="font-monospace" style="margin-top:2rem;text-align: right; color:crimson; font-weight:bold;">Point Of Sales(BHG)</h2>

        <title>Invoice {{ $invoice->invoice_number }}</title>
        <style>
            /* Add your CSS styles here */
            body {
                font-family: Arial, sans-serif;
            }
            table {
                width: 100%;
                border-collapse: collapse;
            }
            th, td {
                border: 1px solid #ddd;
                padding: 8px;
            }
            th {
                background-color: #f2f2f2;
            }
        </style>
    </head>
    <body>
        <h1 style="font-size:1em;">Invoice #{{ $invoice->invoice_number }}</h1>
        <p>Date: {{ $invoice->date }}</p>
    
        <table>
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                @foreach($invoice->items as $item)
                    <tr>
                        <td>{{ $item->product->name }}</td>
                        <td>{{ $item->quantity }}</td>
                        <td>{{ number_format($item->price, 2) }} </td>
                        <td>{{ number_format($item->quantity * $item->price, 2) }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    
        <h3>Total Amount: {{ number_format($invoice->total_amount, 2) }} BDT</h3>
        <h2 class="font-monospace" style="font-size:15px; text-align:right;color:rgb(106, 97, 97);">Created by: ahhsantabid10@gmail.com</h2>
    </body>
    </html>
    



</body>
</html>