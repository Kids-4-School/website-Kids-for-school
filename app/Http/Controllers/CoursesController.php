<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Course;
use Image;

class CoursesController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }


    // Manage courses for Admin 
    public function manageCourses()
    {
        $courses = Course::paginate(6);
        return view('courses.manage_courses')->with('courses',$courses);
    }


    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $courses = Course::where('user_id','=',Auth::user()->id)->paginate(6);
        if(count($courses) > 0)
        {
            return view('courses.index_courses')->with('courses',$courses);
        }
        else
        {
            return redirect()->route('create.course')->with('toast_info', 'Please, Create at least one course');
        }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('courses.create_course');
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
            'subtitle' => ['required','string','max:255'],
            'video_link' => ['required','string','unique:courses','max:300'],
            'description' => ['required','string'],
            'image' => ['required','image','mimes:jpeg,jpg,png'],
            'slide_image' => ['nullable','image','mimes:jpeg,jpg,png'],
        ],[],[

            'title' => 'Title ',
            'subtitle' => 'Subtitle ',
            'video_link' => 'Course link ',
            'description' => 'Description ',
            'image' => 'Photo ',

        ]);

        //Check for Course Image Upload 
        if($request->image){
            Image::make($request->image)->save('uploads/course/'. $request->image->hashName());
        }

        //Check for Slide Image Upload
        if($request->slide_image){
            Image::make($request->slide_image)->save('uploads/slide/'. $request->slide_image->hashName());
        }

        auth()->user()->courses()->create([

            'title' => $request->title,
            'subtitle' => $request->subtitle,
            'video_link' => $request->video_link,
            'description' => $request->description,
            'image' => $request->image->hashName(),
            'slide_image' => $request->slide_image->hashName(),

        ]);

        return redirect()->back()->with('toast_success', 'Course Created Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $course = Course::find($id);
        return view('courses.show_course')->with('course',$course);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $course = Course::find($id);
        return view('courses.edit_course')->with('course',$course);
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
        $course=Course::find($id);

        // Validation
        $request->validate([
            'title' => ['string','max:200'],
            'subtitle' => ['string','max:255'],
            'video_link' => ['string','max:300'],
            'description' => ['string'],
            'image' => ['image','mimes:jpeg,jpg,png'],
            'slide_image' => ['nullable','image','mimes:jpeg,jpg,png'],
        ],[],[

            'title' => 'Title ',
            'subtitle' => 'Subtitle ',
            'video_link' => 'Course link ',
            'description' => 'Description ',
            'image' => 'Photo ',

        ]);

        //Check for Course Image Upload 
        if($request->image){
            Image::make($request->image)->save('uploads/course/'. $request->image->hashName());
        }

        //Check for Slide Image Upload
        if($request->slide_image){
            Image::make($request->slide_image)->save('uploads/slide/'. $request->slide_image->hashName());
        }

        $course->title = $request->title;
        $course->subtitle = $request->subtitle;
        $course->video_link = $request->video_link;
        $course->description = $request->description;
        $course->image = $request->image->hashName();
        $course->slide_image = $request->slide_image->hashName();
        $course->save();

        return redirect()->route('courses')->with('toast_success', 'Your course updated sucessfully');
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
