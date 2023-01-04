<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\CommentBox;

class Post extends Model
{
    use HasFactory;
    protected $primarykey="id";

    // public function category(){
    //     return $this->belongsTo(User::class);
    // }
    public function comments(){
        return $this->hasone(CommentBox::class);
    }
}
