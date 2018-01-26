<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\Resource;

class ProductCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'name' =>$this->name,
            'price' => $this->price,
            'Rating' => $this->reviews->count() ? round($this->reviews->sum('star') / $this->reviews->count()) : "0",
            'href' =>[
                'Product Details' =>route('products.show',$this->id)
            ]
        ];
        //return parent::toArray($request);
    }
}
