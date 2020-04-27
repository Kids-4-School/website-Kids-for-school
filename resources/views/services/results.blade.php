@extends('layouts.app')

@section('content')

<!--Search Services-->
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="card card_style">
                <div class="card-header card_header text-header">Search Results
                    <a class="float-right" href="{{route('services')}}"><span class="badge badge-secondary badge_green"><i class="fas fa-arrow-alt-circle-left"></i></span></a>
                </div>

                <div class="card-body">
                    
                    <table class="table">
                        <thead class="table_header">
                          <tr class="table_row">
                            <th class="table_row" scope="col">Title</th>
                            <th class="table_row" scope="col">Description</th>
                            <th class="table_row" scope="col">Show</th>
                            <th class="table_row" scope="col">Edit</th>
                          </tr>
                        </thead>
                        <tbody>
                            @foreach ($services as $service)
                                <tr class="table_row">
                                    <td class="table_row">{{$service->title}}</td>
                                    <td class="table_row">{{substr($service->description,0,25)}}</td>
                                    @hasrole('admin')
                                        <td class="table_row">
                                            <a class="btn btn-primary btn-green" href="{{route('show.service',['id'=>$service->id])}}" type="button"><i class="fa fa-eye"></i></a>
                                        </td>
                                    @endhasrole

                                    <td class="table_row">
                                        <a class="btn btn-primary btn-edit" href="{{route('edit.service',['id'=>$service->id])}}" role="button"><i class="fa fa-edit"></i></a>
                                    </td>
                                </tr>
                            @endforeach 
                        </tbody>
                    </table>

                </div>
            </div>
        </div>

    </div>
</div>

<!--Search Services/-->
@endsection
