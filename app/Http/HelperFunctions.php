<?php

use App\cosmetic_categories;
use App\cosmetic_main_categories;
use App\cosmetic_sub_categories;
use App\brand;
use App\Product;

function returnHI(){
    return 'hi';
}

function imageValidate($path){
    return $path;
}

function getOne($path){
    return json_decode($path,true)[0];
}

function thumbnail($image_path, $name="cropped"){
    
    $path = pathinfo($image_path);
    return $path['dirname'] . DIRECTORY_SEPARATOR
        . $path['filename'] . '-'
        . $name . '.'
        . $path['extension'];
}

function renderMainCategory($item){
    $Cat = cosmetic_main_categories::where("category_id",$item)->get();
    return $Cat;
}

function renderSubCategory($item){
    $Cat = cosmetic_sub_categories::where("main_category_id",$item)->get();
    return $Cat;
}

function CheckColorAvailable(){

}

function showRelatedProduct($id){
    $relatedProducts = Product::where('sub_category', $id)->get();
    return $relatedProducts;
}

function showNewProduct(){
    $newProducts = Product::orderBy('created_at', 'desc')->get();
    return $newProducts;
}

