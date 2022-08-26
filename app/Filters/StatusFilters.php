<?php

namespace App\Filters;


class StatusFilters
{
    function __invoke($query, $status)
    {
        return $query->where('status', $status);
    }
}