<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Ticket;

class CountController extends Controller
{
    public function index(Request $request)
    {
        $totalTickets = Ticket::count();
        $resolvedTickets = Ticket::where('state', 'Resolved')->count();
        $processingTickets = Ticket::where('state', 'Processing')->count();
        $pendingTickets = Ticket::where('state', 'Pending')->count();

        return response()->json([
            'totalTickets' => $totalTickets,
            'resolvedTickets' => $resolvedTickets,
            'processingTickets' => $processingTickets,
            'pendingTickets' => $pendingTickets,
        ]);
    }
    
}
