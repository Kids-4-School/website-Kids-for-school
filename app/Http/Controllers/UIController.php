<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service;
use App\Lesson;

class UIController extends Controller
{
    //Index
    public function index()
    {
        return view('index');
    }

    //Services
    public function services()
    {
        $services = Service::latest()->get();
        return view('UI.our_services')->with('services',$services);
    }

    //Programs
    public function programs()
    {
        $services = Service::latest()->get();
        return view('UI.programs')->with('services',$services);
    }

    //Courses
    public function courses()
    {
        $services = Service::with('lessons')->latest()->get();
        return view('UI.courses', ['services' => $services]);
    }

    //About
    public function abouts()
    {
        return view('UI.abouts');
    }

    //Contact
    public function contacts()
    {
        return view('UI.contact');
    }


}
