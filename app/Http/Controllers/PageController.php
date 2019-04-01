<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Page;

class PageController extends Controller
{
    //

    public function cancellation(Request $request){
        $contents = Page::where('slug','LIKE','cancellation%')->get();
        // return $contents;
        return view('cancellation')->with('contents', $contents);
    }

    public function privacy(Request $request){
        $contents = Page::where('slug','LIKE', 'privacy%')->get();
        // return $contents;
        return view('cancellation')->with('contents', $contents);
    }

    public function terms(Request $request){
        $contents = Page::where('slug','LIKE', 'terms%')->get();
        // return $contents;
        return view('cancellation')->with('contents', $contents);
    }

    public function about(Request $request){
        $contents = Page::where('slug','LIKE', 'about%')->get();
        // return $contents;
        return view('cancellation')->with('contents', $contents);
    }

    public function contact(Request $request){
        // $contents = Page::where('slug','LIKE', 'about%')->get();
        // return $contents;
        return view('contact');
    }
}
