@extends('layouts.app')

@section('content')
<!--Main Page-->
<div class="container">
    <div class="row justify-content-center ml-4">
        <div class="col-md-12 pt-5 justify-content-center">

            <div class="container">
                <div class="row">

                  
                    <div class="col">
                        <div class="card shadow" style="width:16rem;">
                                <div class="card-header main_card">Total Users 
                                    <span class="ml-5"><i class="fas fa-users"></i></span>
                                </div>
                                <div class="card-header main_card">200
                                    @hasrole('admin') 
                                        <span class="ml-5 align-top"><i class="fa fa-arrow-alt-circle-right"></i></span>
                                    @endhasrole

                                </div>
                        </div>
                    </div>
                  

                  <div class="col">
                    <div class="card shadow" style="width:16rem;">
                            <div class="card-header main_card">Total Users 
                                <span class="ml-5"><i class="fa fa-edit"></i></span>
                            </div>
                            <div class="card-header main_card">200
                                <span class="ml-5 align-top"><i class="fa fa-edit"></i></span>
                            </div>
                    </div>
                  </div>

                  <div class="col">
                    <div class="card shadow" style="width:16rem;">
                            <div class="card-header main_card">Total Users 
                                <span class="ml-5"><i class="fa fa-edit"></i></span>
                            </div>
                            <div class="card-header main_card">200
                                <span class="ml-5 align-top"><i class="fa fa-edit"></i></span>
                            </div>
                    </div>
                  </div>

                </div>
              </div>


        </div>
    </div>
</div>
<!--Main Page/-->
@endsection
