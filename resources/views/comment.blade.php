<!DOCTYPE html>
<html>
<head>
  <title>Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" type="text/css" href="{{asset('css\style.css')}}">
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
   <div class="row">
            <div class="col-sm-8">
              <h3 class="pull-left">Add new comment</h3>
              <div class="row">
                <div class="col-sm-11">
                  <form class="ml-5" method="post" action="{{url('add-comment')}}">
                    @csrf
                    <div class="form-group">
                      @foreach($data as $row)
                      <input type="hidden" name="id" value="{{$row->id}}">
                      <input type="hidden" name="username" value="{{ Auth::user()->name}}"></br></br>
                      @endforeach
                    </div>
                    <div class="form-group">
                      <label for="exampleFormControlTextarea1">Type comment</label>
                      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="comment"></textarea></br></br>
                      <input type="submit" name="save" value="Post Comment">
                      <!-- <input type="cancle" name="cancle" value="Cancle"> -->
                    </div>
                  </form>
                </div>
              </div>
           </div>
      </div>

</body>
</html>