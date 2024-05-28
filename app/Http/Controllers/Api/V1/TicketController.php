<?php

namespace App\Http\Controllers\Api\V1;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreTicketRequest;
use Illuminate\Http\Request;
use App\Http\Resources\V1\TicketResource;
use App\Http\Resources\V1\TicketCollection;

use App\Models\Ticket;

class TicketController extends Controller
{
    public function index(Request $request)
    {
        $searchTicket = $request->input('search');

        $baseQuery = Ticket::with('usered');

        if ($searchTicket) {
            $baseQuery = $baseQuery->where(function ($query) use ($searchTicket) {
                $query->where('state', 'like', '%' . $searchTicket . '%')
                    ->orWhere('severity', 'like', '%' . $searchTicket . '%')
                    ->orWhere('category', 'like', '%' . $searchTicket . '%')
                    ->orWhere('description', 'like', '%' . $searchTicket . '%')

                    ->orWhereHas('usered', function ($query) use ($searchTicket) {
                        $query->where('name', 'like', '%' . $searchTicket . '%')
                            ->orWhere('email', 'like', '%' . $searchTicket . '%')

                            ->orWhereHas('division', function ($query) use ($searchTicket) {
                                $query->where('code', 'like', '%' . $searchTicket . '%');
                            });
                    });
            });
        }
        $baseQuery->orderByRaw("CASE 
        WHEN severity = 'critical' THEN 1 
        WHEN severity = 'high' THEN 2 
        WHEN severity = 'medium' THEN 3 
        WHEN severity = 'low' THEN 4 
        ELSE 5 
    END");

        return new TicketCollection($baseQuery->get());
    }

    public function show(Ticket $ticket)
    {
        return new TicketResource($ticket);
    }

    public function store(StoreTicketRequest $request)
    {
        Ticket::create($request->validated());
        return response()->json("Ticket Created!");
    }

    public function update(StoreTicketRequest $request, Ticket $ticket)
    {
        $ticket->update($request->validated());
        return response()->json("Ticket Updated!");
    }

    public function destroy(Ticket $ticket)
    {
        $ticket->delete();
        return response()->json("Ticket Deleted!");
    }
}
