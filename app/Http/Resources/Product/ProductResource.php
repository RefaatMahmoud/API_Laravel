<?php

namespace App\Http\Resources\Product;

use Illuminate\Http\Resources\Json\Resource;

class ProductResource extends Resource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'name' =>$this->name,
            'price' => $this->price,
            'stock' => $this->stock > 0  ? $this->stock : "Not In Stock",
            'discount' =>$this->discount,
            'number of reviews' => $this->reviews->count(),
            'Rating' => $this->reviews->count() > 0 ? round($this->reviews->sum('star') / $this->reviews->count()) : "0",
            'href' =>[
                'reviews' =>route('review.index',$this->id)
            ]
        ];
        //return parent::toArray($request);
    }
}
