<div class="container">
    <div class="row">
        <div class="col-lg-12 col-sm-6 col-md-12">
            <h1 class="program-title">program</h1>
        </div>

        @foreach ($services as $service)

            <div class="col-sm-6 col-lg-4">
                <div class="card-program">
                    <div class="card-body">
                        <img src="{{$service->image_path}}">
                    </div>

                    <div class="card-footer">
                        <a href="{{route('our.courses')}}" type="button" class="btn btn-primary">{{$service->title}}</a>
                    </div>
                </div>
            </div>
            
        @endforeach
        
    </div>
</div>