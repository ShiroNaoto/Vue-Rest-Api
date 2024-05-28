<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;
use Illuminate\Http\Request;
use App\Http\Resources\V1\UserResource;
use App\Http\Resources\V1\UserCollection;


use App\Models\User;

class UserController extends Controller
{
    public function index(Request $request)
{
    $searchUser = $request->input('search');

    $baseQuery = User::with('division');

    if ($searchUser) {
        $baseQuery = $baseQuery->where(function ($query) use ($searchUser) {
            $query->where('name', 'like', '%' . $searchUser . '%')
                ->orWhere('acctype', 'like', '%' . $searchUser . '%')
                ->orWhere('email', 'like', '%' . $searchUser . '%')
                ->orWhere('username', 'like', '%' . $searchUser . '%')
                ->orWhereHas('division', function ($query) use ($searchUser) {
                    $query->where('name', 'like', '%' . $searchUser . '%');
                });
        });
    }
    $baseQuery->orderByRaw("CASE 
        WHEN acctype = 'admin' THEN 1 
        WHEN acctype = 'user' THEN 2 
    END");

    return new UserCollection($baseQuery->latest()->paginate(5));
}

    public function show(User $user)
    {
        return new UserResource($user);
    }

    public function store(StoreUserRequest $request)
    {
        User::create($request->validated());
        return response()->json("User Created!");
    }

    public function update(UpdateUserRequest $request, User $user)
    {
        $validatedData = $request->validated();

        if (isset($validatedData['password']) && $validatedData['password']) {
            $validatedData['password'] = bcrypt($validatedData['password']);
        } else {
            unset($validatedData['password']);
        }

        $user->update($validatedData);

        return response()->json("User Updated!");
    }

    public function destroy(User $user)
    {
        $user->delete();
        return response()->json("User Deleted!");
    }
}
