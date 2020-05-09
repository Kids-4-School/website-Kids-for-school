<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;

class UIController extends Controller
{
    //Index
    public function index()
    {
        return view('index');
    }

    //Programs
    public function programs()
    {
        $services = Service::all();
        return view('UI.programs')->with('services',$services);
    }

    //About
    public function abouts()
    {
        return view('UI.abouts');
    }


}
