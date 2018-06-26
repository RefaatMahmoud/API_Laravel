<?php

namespace App\Http\Controllers;

use App\Http\Requests\ReviewRequest;
use App\Http\Resources\ReviewResource;
use App\Model\Product;
use App\Model\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;
use Symfony\Component\HttpFoundation\Response;

class ReviewController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Product $product)
    {
        //Return ALl Data in DB
        //return $product->reviews;
        //Return All Data in DB in My resource api After my Customization to see it for end user
        return ReviewResource::collection($product->reviews);

        /*
         * wii return All Reviews in DB
         * return Review::all()
         */

        /*
        $reviews = DB::table('reviews')->where('product_id','=',$product->id)->get();
        return $reviews;
        */
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ReviewRequest $request,Product $product)
    {
        $reviewObj = new Review();
        $reviewObj->customer = $request->customer;
        $reviewObj->review = $request->review;
        $reviewObj->star = $request->star;
        $reviewObj->product_id = $product->id;
        //Save It
        $reviewObj->save();
        //response for me
        return response([
            "data" => new ReviewResource($reviewObj)
        ],Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function show(Review $review)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function edit(Review $review)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product, Review $review)
    {
        //return $review;
        //$review->product_id = $product->id; Not needed
        $review->update($request->all());
        //Response for me
        return response([
            "data"  => new ReviewResource($review)
        ],Response::HTTP_CREATED); //path : vendor / symfony / http-foundation / response
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Review  $review
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product , Review $review )
    {
        //
        $review->delete();
        return response(NULL,Response::HTTP_NOT_FOUND);
    }
}
