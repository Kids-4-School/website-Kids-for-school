@extends('layouts.app')

@section('content')

<!--Manage Courses-->
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card card_style">
                <div class="card-header card_header text-header">Manage Courses</div>

                <div class="card-body">
                    
                    <table class="table">
                        <thead class="table_header">
                          <tr class="table_row">
                            <th class="table_row" scope="col">User</th>
                            <th class="table_row" scope="col">Title</th>
                            <th class="table_row" scope="col">Subtitle</th>
                            <th class="table_row" scope="col">image</th>
                            <th class="table_row" scope="col">Show</th>
                            <th class="table_row" scope="col">Edit</th>
                            <th class="table_row" scope="col">Delete</th>
                          </tr>
                        </thead>
                        <tbody>
                            @foreach ($courses as $course)
                                <tr class="table_row">
                                    <td class="table_row">{{$course->user->name}}</td>
                                    <td class="table_row">{{$course->title}}</td>
                                    <td class="table_row">{{substr($course->subtitle, 0,25)}}...</td>
                                    <td class="table_row">
                                        <img class="circle_image" src="{{$course->image_path}}" alt="Service Image" width="50" height="50">
                                    </td>
                                    
                                    {{-- <td class="table_row">
                                        <button class="btn btn-primary btn-green" data-toggle="modal" data-target="#showServiceModal" data-service_id="{{$service->id}}" data-title="{{$service->title}}" data-image="{{$service->image}}" data-description="{{$service->description}}" type="button"><i class="fa fa-eye"></i></button>
                                    </td>
                                    <td class="table_row">
                                        <a class="btn btn-primary btn-edit" href="{{route('edit.service',$service->id)}}" role="button"><i class="fa fa-edit"></i></a>
                                    </td> --}}
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

<!--Manage Courses/-->
@endsection
