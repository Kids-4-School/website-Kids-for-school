<!--Courses Cards-->

{{-- <div class="card-slider">
    <div class="container">
        @foreach ($services as $service)
            @if ($service->lessons->count() > 0)
                <div class="row" style="margin-top:100px;">
                    <div class="col-sm-12 courese-sec courese-body">
                        <div class="title">
                            <img src="../layout/image/99.png" alt="">
                            <p>{{$service->title}}</p>
                        </div>
        
                        <div class="container">
                            <div class="row courese">
                                <!--start card-->
                                @foreach ($service->lessons->take(3) as $lesson)
                                    <div class="col-sm-12 col-lg-4 col-md-4">
                                        <div class="card card-coureses">
                                            <img src="{{$lesson->image_path}}" class="card-img-top">
                                            <a type="button" class="btn btn-warning btn-block" href="viwe.html">{{$lesson->title}}</a>
                                        </div>
                                    </div>
                                @endforeach
                                <!--end card-->
                            </div>

                            <!--Pagination-->

                            
                        </div>
        
                    </div>
                    <!--end row-->
                </div>
            @endif
        @endforeach
    </div>
</div> --}}

<!--Courses Cards/-->





<!--Courses Cards-->

<div class="card-slider">
    <div class="container">
        @foreach ($services as $service)
            @if ($service->lessons->count() > 0)
                <div class="row" style="margin-top:100px;">
                    <div class="col-sm-12 courese-sec courese-body">
                        <div class="title">
                            <img src="../layout/image/99.png" alt="">
                            <p>{{$service->title}}</p>
                        </div>
        
                        <div class="container">
                            <div class="row courese">
                                <!--start card-->
                                @foreach ($lessons as $lesson)
                                    @if ($service->id == $lesson->service_id)
                                        <div class="col-sm-12 col-lg-4 col-md-4">
                                            <div class="card card-coureses">
                                                <img src="{{$lesson->image_path}}" class="card-img-top">
                                                <a type="button" class="btn btn-warning btn-block" href="{{$lesson->path()}}">{{$lesson->title}}</a>
                                            </div>
                                        </div>
                                    @endif
                                @endforeach

                                <!--end card-->

                                
                            </div>

                            <!--Pagination-->
                            {{$lessons->links()}}
                            <!--Pagination/-->
                            
                        </div>
        
                    </div>
                    <!--end row-->
                </div>
            @endif
        @endforeach
    </div>
</div>

<!--Courses Cards/-->



{{-- @foreach($services as $service)
        @if ($service->lessons->count() >0)
            <div class="row courese-body courese-sec">
                <div class="title">
                    <img src="../layout/image/99.png" alt="">
                    <p>{{$service->title}}</p>
                </div>
                @foreach ($service->lessons->take(3) as $lesson)
                    <div class="col-sm-6 col-lg-4 col-md-6">
                        <div class="card-courese">
                            <div class="card-body">
                                <img src="{{$lesson->image_path}}">
                            </div>
                            <button type="button" class="btn btn-primary btn-lg btn-block">{{$lesson->title}}</button>
                        </div>
                    </div>
                @endforeach
            </div>
        @endif
    @endforeach --}}
