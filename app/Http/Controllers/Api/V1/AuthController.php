<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Ticket;
use Illuminate\Support\Facades\Auth;
class AuthController extends Controller
{
    public function login(Request $request)
    {
        $credentials = $request->validate([
            'username' => ['required'],
            'password' => ['required'],
        ]);

        if (Auth::attempt($credentials)) {
            $user = Auth::user();
            $token = auth()->user()->createToken('client');

            if ($user->acctype == 'admin') {
                return response()->json([
                    'status' => true, 
                    'message' => 
                    'Login Successful!', 
                    'token' => $token->plainTextToken,
                    'user' => [
                        'id' => $user->id,
                        'name' => $user->name,
                        'acctype' => $user->acctype]
                    ]);
                    
            } else {
                $tickets = Ticket::where('user_id', $user->id)->get();
                $ticketCount = $tickets->count();
                $resolvedTickets = $tickets->where('state', 'Resolved')->count();
                $processingTickets = $tickets->where('state', 'Processing')->count();
                $pendingTickets = $tickets->where('state', 'Pending')->count();

                return response()->json([
                    'status' => true, 
                    'message' => 
                    'Login Successful!', 
                    'token' => $token->plainTextToken,
                    'user' => [
                        'id' => $user->id,
                        'name' => $user->name,
                        'acctype' => $user->acctype,
                        
                        'ticketCount' => $ticketCount,
                        'resolvedTickets' => $resolvedTickets,
                        'processingTickets' => $processingTickets,
                        'pendingTickets' => $pendingTickets]
                    ]);
            }
        }
        return response()->json([
            'status' => false, 
            'message' => "Login Failed."]);
    }

    public function logout(Request $request)
    {
        $request->user()->currentAccessToken()->delete();
        return response()->json(['message' => 'Logout Successful!']);
    }
}
