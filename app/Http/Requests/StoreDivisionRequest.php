<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;


class StoreDivisionRequest extends FormRequest
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
            "name" => "required|string|max:255",
            "code" => ["required","string","max:255",Rule::unique("divisions")->ignore($this->division)],
            "head" => "required|string",
            "duty" => "required|string",
        ];
    }

    public function messages(): array
    {
        return [
            'name.required' => 'Please enter Division name!',
            'code.required' => 'Please enter Division code!',
            'code.unique' => 'Division code already taken!',
            'head.required' => 'Please enter Division head!',
            'duty.required' => 'Please enter Division duty!'
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

