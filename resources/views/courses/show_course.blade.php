@extends('layouts.app')

@section('content')

<!--Show Single Course-->
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card card_style">
                <img src="{{$course->image_path}}" class="card-img-top top_style" alt="Course Image">
                <div class="card-header card_header text-header">{{$course->title}}</div>

                <div class="card-body">
                    <h5 class="card-title">{{$course->subtitle}}</h5>
                    <p class="card-text">{{$course->description}}</p>
                    
                    <div class="embed-responsive embed-responsive-16by9">
                        <iframe class="embed-responsive-item" width="560" height="315" src="{{$course->video_link}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                </div>

                <div class="modal-footer modal_footer_sty">
                    <a type="button" href="{{route('courses')}}" class="btn btn-warning btn-edit float-right" data-dismiss="modal">Close <i class="far fa-times-circle"></i></a>
                </div>

            </div>
        </div>

    </div>
</div>

<!--Show Single Course/-->
@endsection
