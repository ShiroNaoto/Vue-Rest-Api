<?php

namespace App\Http\Resources\V1;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */

    //Selected Rows in Database
    public function toArray(Request $request): array
    {
        $divisionName = $this->division ? $this->division->name : "N/A";
        return [
            'id' => $this->id,
            'name' => $this->name,
            'username' => $this->username,
            'email' => $this->email,
            'acctype' => $this->acctype,
            'divid' => $divisionName,
            'division_id' => $this->division_id, 
            'created' => $this->created_at,
            'updated' => $this->updated_at
        ];
    }
}
