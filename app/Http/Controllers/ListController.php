<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\cosmetic_categories;
use App\cosmetic_main_categories;
use App\cosmetic_sub_categories;
use App\Product;
use App\brand;
use App\ModelFilters\ProductFilter;


class ListController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    // var $paginateAmount = 15;
    
    public function index(Request $request)
    {   
        $categories = cosmetic_main_categories::all();
        $sub_categories = cosmetic_sub_categories::all();
        $products = Product::paginate(12);
        $brands = brand::all();
        $categorySelect = $request->category;
        $brandSelect = $request->brand;

        //$users = DB::select('select * from users where active = ?', [1]);

        // return $request->path();
        return view('list',compact('categories', 'sub_categories', 'products', 'brands'));
        // return $query;

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
    public function store(Request $request)
    {
        //
        return $request;
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $name , $id)
    {
        //
        $query = $name->all();
        $categories = cosmetic_categories::all();
        $brands = brand::all();
        $categorySelect = $name->category;
        $brandSelect = $name->brand;

        $products = $name.'/'.$id;
        if($name == 'maincategory' || $name == 'main_category' || $name == 'maincategories' || $name == 'main_categories'){
            $products = Product::where('main_category', $id)->paginate(12);
        }
        elseif ($name == 'subcategory' || $name == 'sub_category' || $name == 'subcategories' || $name == 'sub_categories') {
            $products = Product::where('sub_category', $id)->paginate(12);
        }
        elseif ($name == 'brand') {
            $products = Product::where('brand', $id)->paginate(12);
        }
        else{
            $products = Product::paginate(12);
        }
        return view('layout.list.list-product')->with('products', $products);

    }

    public function search(Request $request){

        $categories = cosmetic_main_categories::all();
        $sub_categories = cosmetic_sub_categories::all();
        $products;
        $brands = brand::all();

        $query = $request->search;

        if($query == null){
           $products =null;
        }
        else{
            $products = Product::where('name', 'LIKE', '%'.$query.'%')->orWhere('brand', 'LIKE', '%'.$query.'%')->paginate(12);
        }
        return view('list',compact('categories', 'sub_categories', 'products', 'brands'));
    }

    public function filter(Request $request){

        $categorySelect = $request->category;
        $brandSelect = $request->brand;
        $categories = cosmetic_main_categories::all();
        $sub_categories = cosmetic_sub_categories::all();
        $brands = brand::all();
        $products;
        if(request()->has('category') || request()->has('brand') || request()->has('price') || request()->has('color')){
            $products = Product::filter($request->all())->paginate(12);
        }
        else{
            $products = Product::paginate(12);
        }

        // return $products;
        // return view('list')->with('products',$products);
        return view('list',compact('categories', 'brands', 'categorySelect', 'products', 'brandSelect'));
        
    }
   
}
