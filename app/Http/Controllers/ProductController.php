<?php

namespace App\Http\Controllers;

use App\Filters\ProductFilters;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();

        return view('backend.pages.product.index', compact('products'));
    }

    public function create()
    {
        return view('backend.pages.product.create');
    }

    public function edit($id)
    {
        $product = Product::find($id);

        return view('backend.pages.product.edit', compact('product'));
    }

    public function productFilter(ProductFilters $filters)
    {
//        ['price' => '100,150', 'sort' => 'ASC', 'status' => '1', ];
        return Product::filter($filters)->get();
    }
}
