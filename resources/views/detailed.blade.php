<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap 4 Website Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="{{asset('css\style.css')}}">
  <style>
  .image{
  	height: 400px;
  	width: 400px;
  }
  .username{
    color: blue;
  }
   </style>
</head>
<body>
   <nav class="navbar navbar-light bg-light">
    <img class="card-img-top" src="https://cdn.pixabay.com/photo/2015/06/01/09/04/blog-793047_960_720.jpg">
    <form method="post" action="{{url('/search-post')}}" class="form-inline">
    {{csrf_field()}}
    <input name="name" type="text" class="form-control mr-sm-2" placeholder="Search Post" aria-label="Search">
    <input type="submit" name="submit" class="btn btn-outline-success my-2 my-sm-0" value="Search">
  </form>
  </nav>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <!-- <a class="navbar-brand" href="#">Navbar</a> -->
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="{{url('/')}}">Home <span class="sr-only">(current)</span></a>
      </li>
       <div class="dropdown show">
      <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Categories
      </a>

      <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
        @foreach($category as $row)
        <a class="dropdown-item" href="{{url('displaycategory/'.$row->id)}}">{{$row->categoryName}}</a>
        @endforeach 
      </div>
    </div>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
    </ul>
    <div class="dropdown show">
      <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        @auth
        {{ Auth::user()->name}}
        @else
        User
        @endauth
      </a>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
        @auth
        <a class="dropdown-item" href="">
          <form method="POST" action="{{ route('logout') }}">
            @csrf
            <x-dropdown-link :href="route('logout')"
                                    onclick="event.preventDefault();
                                                this.closest('form').submit();">
                                {{ __('Log Out') }}
                            </x-dropdown-link>
                          </form>
        </a>
        @else
        <a class="dropdown-item" href="{{ route('login') }}">{{ __('Log In') }}</a>
        @endauth
      </div>
    </div>
  </div>
</nav>
    <div class="container" style="margin-top:30px">
	  @foreach($data as $row)
      <div class="row">
        <div class="col-sm-12">
            <h2>{{$row->title}}</h2>
            <h5>{{$row->description}}</h5>
            <div class="fakeimg"><img class="image" src="{{url($row->image)}}" alt="Image not found"></div></br>
            <p><b>Post created at :</b> {{$row->created_at}}</p>
            <p> {{$row->detail}}</p>
        </div>
    </div></br></br>
     @endforeach
     <a href="{{url('comment-box/'.$row->id)}}"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">Comment Here</button></a></br></br>
     <!-- Modal -->
     <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    Login First !
                </div>
            </div>
        </div>
    </div>
    
    <!--  Display Comment -->
    <section class="content-item" id="comments">
        <div class="container">
            <h3>Comment Section</h3><!-- 4 Comments -->
                <!-- COMMENT - START -->
                @foreach($commentdata as $row)
                <div class="container bootstrap snippets bootdey">
                    <div class="row">
                        <div class="panel panel-default widget">
                            <div class="panel-heading">
                                <span class="glyphicon glyphicon-comment"></span>
                            </div>
                            <div class="panel-body">
                                <ul class="list-group">
                                    <li class="list-group-item">
                                        <div class="row">
                                            <div class="col-xs-10 col-md-11">
                                                <div>
                                                    <div class="mic-info">
                                                        Comment by : <span class="username">{{$row->username}}</span> on : {{$row->created_at}}</div>
                                                    </div>
                                                    <div class="comment-text">
                                                        {{$row->comment}}
                                                    </div>
                                                </div>
                                            </div>
                                        </li></ul></br></br>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </section>
        
<!-- Display Comment Ends -->

</body>
</html>
