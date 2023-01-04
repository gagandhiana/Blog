<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CommentBox extends Model
{
    use HasFactory;
    protected $table="comment_boxes";
    protected $primarykey="id";
    public $timestamps=false;

    public function posts(){
        return $this->belongsTo(User::class);
    }
}
