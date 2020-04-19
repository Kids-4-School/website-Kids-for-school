<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    //To protect entered data
    protected $fillable = ['title','image','description','user_id'];

    // To Upload Image
    protected $appends = ['image_path'];

    /**
     * get Image Path For any images
     *
     * @return void
     */
    public function getImagePathAttribute()
    {
        return asset('uploads/service/' . $this->image);
    }


    //Relation between Users and Services ( One-to-Many )
    public function user()
    {
        return $this->belongsTo('App\User');
    }



}
