<?php

use Faker\Generator as Faker;

$factory->define(App\Model\Review::class, function (Faker $faker) {
    return [
        //
        "customer" =>$faker->word,
        "review" =>$faker->paragraph,
        "star" =>$faker->numberBetween(0,5),
        "product_id" => function(){
        return \App\Model\Product::all()->random();
        }
    ];
});
