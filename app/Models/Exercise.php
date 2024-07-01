<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Exercise extends Model
{
    use HasFactory;
    protected $table = 'exercises';

//    protected $fillable = ['name'];
    protected $guarded = [];

    public function users()
    {
        return $this->hasMany(User::class, 'current_exercise_id');
    }
}
