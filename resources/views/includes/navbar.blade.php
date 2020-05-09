<!--start navbar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand"> <img src="layout/image/logo-1.png" alt=""></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
  <span class="navbar-toggler-icon"></span>
</button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="{{route('index')}}"><span class="{{ request()->routeIs('index') ? 'parallelogram-active':'parallelnavcolor' }}"></span><p class="txt">Home</p> </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="other page/our_service.html"><span class="parallelogram"></span> <p class="txt">Our Services</p></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('programs')}}"><span class="{{ request()->routeIs('programs') ? 'parallelogram-active':'parallelnavcolor' }}"></span> <p class="txt">programs</p></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="other page/courese.html"><span class="parallelogram"></span> <p class="txt">Courses</p></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{route('about')}}"><span class="{{ request()->routeIs('about') ? 'parallelogram-active':'parallelnavcolor' }}"></span> <p class="txt">About</p></span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="other page/contact.html"><span class="parallelogram"></span> <p class="txt">Contact</p></span></a>
            </li>

        </ul>

    </div>
</nav>

<!-- End navbar-->