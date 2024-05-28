<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreTicketRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'user_id' => 'required|integer',
            'state' => 'required|string|max:255',
            'severity' => 'required|string',
            'category' => 'required|string',
            'description' => 'required|string',
            'remark' => 'nullable',
        ];
    }

    public function messages(): array
    {
        return [
            'severity.required' => 'Please select severity!',
            'category.required' => 'Please select category!',
            'description.required' => 'Please specify your request!'
        ];
    }

    public function withValidator($validator)
    {
        $validator->stopOnFirstFailure();
    }

    protected function failedValidation($validator)
    {
        $errors = $validator->errors()->toArray();
        $firstErrorKey = array_key_first($errors);
        $firstErrorMessage = $errors[$firstErrorKey][0];

        $response = response()->json([
            'message' => $firstErrorMessage,
            'field' => $firstErrorKey,
        ], 422);

        throw new \Illuminate\Validation\ValidationException($validator, $response);
    }
}

