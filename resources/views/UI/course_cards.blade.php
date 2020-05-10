<!--Courses Cards-->

<div class="container">
    <div class="row">
        <div class="col-lg-12 col-sm-6 col-md-12">
            <h1 class="coureses-title">Courses</h1>
        </div>
    </div>

    @foreach($services as $service)
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
    @endforeach
    

</div>
<!--Courses Cards/-->
