<?php namespace App\ModelFilters;

use EloquentFilter\ModelFilter;

class ProductFilter extends ModelFilter
{
    /**
    * Related Models that have ModelFilters as well as the method on the ModelFilter
    * As [relationMethod => [input_key1, input_key2]].
    *
    * @var array
    */
    public $relations = [];
    public function id($id)
    {
        return $this->where('id', $id);
    }

    // public function name($name)
    // {
    //     return $this->where(function($q) use ($name)
    //     {
    //         return $q->where('first_name', 'LIKE', "%$name%")
    //             ->orWhere('last_name', 'LIKE', "%$name%");
    //     });
    // }

    public function category($id)
    {
        return $this->whereIn('category', $id);
    }
    public function brand($name)
    {
        return $this->whereIn('brand', $name);
    }
    public function price($id)
    {
        $price = explode(',',$id);
        $priceMax = $price[0];
        $priceMin = $price[1];

        return $this->whereBetween('price',array($priceMin, $priceMax));
    }
    // public function priceMin($id)
    // {
    //     return $this->whereIn('brand','>=' ,$id);
    // }
    
}
