<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Image;
use App\Profile;
use App\Province;

class ProfileController extends Controller
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
        $profiles = Profile::all();
        $provinces = Province::all();
        foreach($profiles as $profile)
        {
            if($profile['user_id'] == auth()->user()->id)
            {
                return view('profiles.index_profile')->with('profile',$profile)->with('provinces',$provinces);
            }
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $provinces = Province::all();
        return view('profiles.create_profile')->with('provinces',$provinces);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validation (,'date_format:d-m-Y')
        $request->validate([
            'phone_number' => ['nullable','string','unique:profiles','max:100'],
            'age' => ['nullable','date','max:100'],
            'first_address' => ['nullable','string','max:150'],
            'second_address' => ['nullable','string','max:150'],
            'city' => ['nullable','string','max:100'],
            'province' => ['nullable','string','max:100'],
            'facebook' => ['nullable','string','max:100'],
            'twitter' => ['nullable','string','max:100'],
            'github' => ['nullable','string','max:100'],
            'image' => 'image|mimes:jpeg,jpg,png',
            'biography' => ['nullable','string'],
        ],[],[

            'phone_number' => 'Phone Number ',
            'age' => 'Age ',
            'first_address' => 'First Address ',
            'second_address' => 'Second Address ',
            'city' => 'City ',
            'province' => 'Province ',
            'facebook' => 'Facebook ',
            'twitter' => 'Twitter ',
            'github' => 'Github ',
            'image' => 'Photo ',
            'biography' => 'Biography ',

        ]);

        if($request->image){
            Image::make($request->image)->save('uploads/profile/'. $request->image->hashName());
        }


        auth()->user()->profile()->create([
            'phone_number' => $request->phone_number,
            'age' => $request->age,
            'first_address' => $request->first_address,
            'second_address' => $request->second_address,
            'city' => $request->city,
            'province' => $request->province,
            'facebook' => $request->facebook,
            'twitter' => $request->twitter,
            'github' => $request->github,
            'image' => $request->image->hashName(),
            'biography' => $request->biography
        ]);

        return redirect()->back()->with('toast_success', 'Profile Created Successfully');
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
