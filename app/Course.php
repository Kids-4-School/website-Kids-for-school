<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    //To protect entered data
    protected $fillable = ['title','subtitle','video_link','description',
                            'image','slide_image','user_id'];


    // Path of Course Upload Images ( Course & Slide images )
    protected $appends = ['image_path','slide_path'];

    /**
     * get Image Path For any images
     *
     * @return void
     */
    public function getImagePathAttribute()
    {
        return asset('uploads/course/' . $this->image);
    }

    // To upload Slide Image 
    public function getSlidePathAttribute()
    {
        return asset('uploads/slide/' . $this->slide_image);
    }


    //Relation between Users and Courses ( One-to-Many )
    public function user()
    {
        return $this->belongsTo('App\User');
    }



}
