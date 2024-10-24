
$(document).ready(function () {
    // Update the totals for each row
    function updateTotal() {
        $('#invoiceTable tbody tr').each(function () {
            var quantity = $(this).find('.quantity').val();
            var price = $(this).find('.price').val();
            var total = quantity * price;
            $(this).find('.total').val(total.toFixed(2));
        });

        // Overall total sum
        var overallTotal = 0;
        $('#invoiceTable tbody .total').each(function() {
            overallTotal += parseFloat($(this).val()) || 0;
        });
        $('#overallTotal').text(overallTotal.toFixed(2));
    }

    // On change of product selection, update the price
    $('#invoiceTable').on('change', '.product-select', function () {
        var price = $(this).find('option:selected').data('price');
        $(this).closest('tr').find('.price').val(price);
        updateTotal();
    });

    // On input change of quantity, update the total
    $('#invoiceTable').on('input', '.quantity', function () {
        updateTotal();
    });

    // Add new row on "Add Product" button click
    $('#addRow').click(function () {

        var newRow = $('#invoiceTable tbody tr:first').clone(); // Clone the first row
        newRow.find('input').val('');  // Clear all inputs in the cloned row
        newRow.find('.total').val('0'); // Reset total to 0
        $('#invoiceTable tbody').append(newRow);  // Append the new row to the table
        updateTotal(); // Ensure the totals are updated

        // console.log('New Row Added');

    });

    // Initialize the totals on page load
    updateTotal();
});
