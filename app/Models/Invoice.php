<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Invoice extends Model
{
    protected $fillable = ['invoice_number', 'date', 'total_amount'];

    public function items()
    {
        return $this->hasMany(InvoiceItem::class);
    }
}
