<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Category;
use App\Models\Post;
use App\Models\CommentBox;

class BlogController extends Controller
{
    // Display Home Page

    public function home(){
        $data=Post::get();
        $category=Category::get();
        return view('home',compact('data','category'));
    }

    // Display Category

    public function display_category($id){
        $data=Post::where('category_id',$id)->get();
        $getcategory=Category::where('id',$id)->get();
        $category=Category::get();
        return view('category_wise',compact('data','getcategory','category'));
    }

    // Detailed Blog

    public function detailed_blog($id){
       $data=Post::where('id',$id)->with('comments')->get();
       $category=Category::get();
       $commentdata=CommentBox::where('post_id',$id)->get();
        return view('detailed', compact('data','category','commentdata'));
    }

    // Add Comment

    public function comment_box($id){
        $data=Post::where('id',$id)->get();
        $category=Category::get();
        return view('comment', compact('data','category'));
    }

    public function add_comment(Request $request){
        $add = new CommentBox;
        if ($request->isMethod('post')) {
             $add->username=$request->get('username');
             $add->comment=$request->get('comment');
             $add->post_id=$request->get('id');
             $add->save();
        } 
        return back();
    }

    // Search Blog Post

    public function search_post(Request $request){
        if($request->isMethod('post')){
            $search=$request->get('name');
            $data=Post::where('detail', 'LIKE', '%'. $search .'%')->paginate();
            $category=Category::where('categoryName', 'LIKE', '%'. $search .'%')->paginate();
        }
        return view('home', compact('data','category'));
    }

    // Delete Comment

    public function delete_comment($id){
        $ob=CommentBox::find($id);
        $ob->delete();
        return redirect('/');
    }
}
