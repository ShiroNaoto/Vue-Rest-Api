<?php

namespace App\Http\Resources\V1;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class TicketResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id' => $this->id,
            'user_id' => $this->user_id,
            'state' => $this->state,
            'staffname' => $this->usered->name,
            'email' => $this->usered->email,
            'ticketdiv' => $this->usered->division->code,
            'severity' => $this->severity,
            'category' => $this->category,
            'description' => $this->description,
            'remark' => $this->remark
        ];
    }
}
