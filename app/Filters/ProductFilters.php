<?php

namespace App\Filters;

class ProductFilters
{
    protected $filters = [
        'price' => PriceFilters::class,
        'sort' => SortFilters::class,
        'status' => StatusFilters::class,
    ];

    public function apply($query)
    {
        foreach ($this->receivedFilters() as $name => $value) {
            $filterInstance = new $this->filters[$name];
            $query = $filterInstance($query, $value);
        }

        return $query;
    }


    public function receivedFilters()
    {
        return request()->only(array_keys($this->filters));
    }
}