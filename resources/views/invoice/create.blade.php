<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
{{-- bootstrap 5.0.2 cdn --}}
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
<div class="container">
    <h2 class="font-monospace" style="margin-top:2rem; color:crimson; font-weight:bold;">Point Of Sales(BHG)</h2>
    <h2 class="font-monospace" style="font-size:15px; text-align: -webkit-center;color:gray;">Created by: ahhsantabid10@gmail.com</h2>

    <form action="{{ url('/invoice/store') }}" method="POST">
        @csrf
    
        <table id="invoiceTable">
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <select name="product_id[]" class="form-control product-select">
                            <option value="">Select Product</option>
                            @foreach($products as $product)
                                <option value="{{ $product->id }}" data-price="{{ $product->price }}">
                                    {{ $product->name }} ({{ $product->description }})
                                </option>
                            @endforeach
                        </select>
                    </td>
                    <td><input type="number" name="quantity[]" class="form-control quantity" value="1"></td>
                    <td><input type="text" name="price[]" class="form-control price" readonly></td>
                    <td><input type="text" name="total[]" class="form-control total" readonly></td>
                </tr>
            </tbody>
        </table>
    
        <div>
            <strong>Total: <span id="overallTotal">0.00</span></strong> BDT
        </div>
<br>
        <button type="button" class="btn btn-info" id="addRow">Add Product</button>
        <button type="submit" class="btn btn-danger">Create Invoice</button>
    </form>
    
    <script src="{{ asset('js/invoice.js') }}"></script>
    

</div>
    
</body>
</html>