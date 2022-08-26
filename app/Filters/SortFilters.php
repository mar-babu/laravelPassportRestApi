<?php

namespace App\Filters;


class SortFilters
{
    function __invoke($query, $sort)
    {
        return $query->orderBy('created_at', $sort);
    }
}