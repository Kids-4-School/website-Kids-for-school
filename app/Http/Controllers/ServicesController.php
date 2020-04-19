<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Service;
use Image;

class ServicesController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $services = Service::where('user_id','=',Auth::user()->id)->paginate(6);
        if(count($services) > 0)
        {
            return view('services.index_service')->with('services',$services);
        }
        else
        {
            return redirect()->route('create.service')->with('toast_info', 'Please, Create at least one service');
        }
        
    }

    // Manage Services for Amdin 
    public function manageServices()
    {
        $services = Service::paginate(6);
        return view('services.manage_services')->with('services',$services);
    }



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('services.create_service');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validation
        $request->validate([
            'title' => ['required','string','max:200'],
            'image' => 'required|image|mimes:jpeg,jpg,png',
            'description' => ['required','string'],
        ],[],[

            'title' => 'Title ',
            'image' => 'Photo ',
            'description' => 'Description ',

        ]);

        if($request->image){
            Image::make($request->image)->save('uploads/service/'. $request->image->hashName());
        }


        $service = Service::create([

            'title' => $request->title,
            'image' => $request->image->hashName(),
            'description' => $request->description,
            'user_id' => Auth::user()->id

        ]);

        return redirect()->route('services')->with('toast_success', 'Service Created Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $services = Service::find($id);
        return view('services.edit_service')->with('services',$services);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $service=Service::find($id);

        // Validation
        $request->validate([
            'title' => ['string','max:200'],
            'image' => 'image|mimes:jpeg,jpg,png',
            'description' => ['string'],
        ],[],[

            'title' => 'Title ',
            'image' => 'Photo ',
            'description' => 'Description ',

        ]);

        if($request->image){
            Image::make($request->image)->save('uploads/service/'. $request->image->hashName());
        }

        $service->title = $request->title;
        $service->image = $request->image->hashName();
        $service->description = $request->description;
        $service->save();

        return redirect()->route('services')->with('toast_success', 'Your Service updated sucessfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $del = Service::find($id);
        $del->destroy($id);

        return redirect()->route('services.all')->with('toast_success', 'Service deleted Successfully');
    }
}
