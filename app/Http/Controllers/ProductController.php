<?php

namespace App\Http\Controllers;

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

    //product filter by price range, sort by, status
    public function filter(Request $request)
    {
        $query = Product::query();

        if ($request->filled('min_price') || $request->filled('max_price')) {
            $query->whereBetween('price', [$request->min_price, $request->max_price]);
        }

        if ($request->filled('sort')) {
            $sortBy = $request->sort;
            $query->orderBy('created_at', $sortBy);
        }

        if ($request->filled('status')) {
            $status = $request->status;
            $query->where('status', $status);
        }

        $products = $query->get();

        return view('backend.pages.product.index', compact('products'));
    }
}
