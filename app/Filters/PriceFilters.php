<?php

namespace App\Filters;


class PriceFilters
{
    function __invoke($query, $price)
    {
        list($min, $max) = explode(",", $price);

        $query->where('price', '>=', $min)
            ->where('price', '<=', $max);

        return $query->whereHas('category', function ($query) use ($categorySlug) {
            $query->where('slug', $categorySlug);
        });
    }
}