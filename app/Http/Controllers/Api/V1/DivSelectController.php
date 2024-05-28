<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Resources\V1\DivisionCollection;

use App\Models\Division;

class DivSelectController extends Controller
{
    public function index(){
        return new DivisionCollection(Division::all());
    }
}
