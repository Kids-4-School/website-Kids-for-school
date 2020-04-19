@extends('layouts.app')

@section('content')

<!--Courses-->
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card card_style">
                <div class="card-header card_header text-header">My Courses</div>

                <div class="card-body">
                    
                    <table class="table">
                        <thead class="table_header">
                          <tr class="table_row">
                            <th class="table_row" scope="col">Title</th>
                            <th class="table_row" scope="col">Subtitle</th>
                            <th class="table_row" scope="col">Image</th>
                            <th class="table_row" scope="col">Show</th>
                            <th class="table_row" scope="col">Edit</th>
                          </tr>
                        </thead>
                        <tbody>
                                @foreach ($courses as $course)
                                    <tr class="table_row">
                                        <td class="table_row">{{$course->title}}</td>
                                        <td class="table_row">{{substr($course->subtitle,0,25)}}...</td>
                                        <td class="table_row">
                                            <img class="circle_image" src="{{$course->image_path}}" alt="Service Image" width="50" height="50">
                                        </td>
                                        
                                        <td class="table_row">
                                            <a class="btn btn-primary btn-green" href="{{route('show.course',['id'=>$course->id])}}" type="button"><i class="fa fa-eye"></i></a>
                                        </td>
                                        <td class="table_row">
                                            <a class="btn btn-primary btn-edit" href="{{route('edit.course',['id'=>$course->id])}}" role="button"><i class="fa fa-edit"></i></a>
                                        </td>
                                    </tr>
                                @endforeach
                        </tbody>
                      </table>

                      {{$courses->links()}}

                </div>
            </div>
        </div>

    </div>
</div>

<!--Courses/-->
@endsection
