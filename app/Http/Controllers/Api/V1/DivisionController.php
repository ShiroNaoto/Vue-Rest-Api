<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\StoreDivisionRequest;
use App\Http\Resources\V1\DivisionResource;
use App\Http\Resources\V1\DivisionCollection;

use App\Models\Division;


class DivisionController extends Controller
{
    public function index(Request $request)
    {
        $searchDiv = $request->input('search');

        $baseQuery = Division::query();

        if ($searchDiv) {
            $baseQuery = $baseQuery->where(function ($query) use ($searchDiv) {
                $query->where('name', 'like', '%' . $searchDiv . '%')
                    ->orWhere('code', 'like', '%' . $searchDiv . '%')
                    ->orWhere('head', 'like', '%' . $searchDiv . '%')
                    ->orWhere('duty', 'like', '%' . $searchDiv . '%');
            });
        }

        return new DivisionCollection($baseQuery->paginate(5));
    }

    public function show(Division $division)
    {
        return new DivisionResource($division);
    }

    public function store(StoreDivisionRequest $request)
    {
        Division::create($request->validated());
        return response()->json("Division Created!");
    }

    public function update(StoreDivisionRequest $request, Division $division)
    {
        $division->update($request->validated());
        return response()->json("Division Updated!");
    }

    public function destroy(Division $division)
    {
        $division->delete();
        return response()->json("Division Deleted!");
    }
}
