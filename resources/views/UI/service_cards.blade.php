<!-- start card our service -->
<div class="container">
    <div class="row">
        <div class="card card-our">
            <div class="card-body text-center">
                <p> Our Services</p>
            </div>
            
            @foreach ($services as $service)
                <!--start list pin-->
                    <div class="list-group-item">
                        <div class="rectangle2" style="background-color:{{$color}};">
                            <img src="{{$service->image_path}}" alt="">
                            <a href="{{route('our.courses')}}" class="list-group-item"> <span>{{$service->title}}</span> </a>
                            <div class="triangle-left2" style="border-right-color:{{$color}};"></div>
                            <div class="flag2">
                                <p>{{$service->id}}</p>
                            </div>
                        </div>
                    </div>
                <!--end list pin-->
            @endforeach


        </div>
    </div>
</div>