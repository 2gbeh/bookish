<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateBookRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'cover' => 'nullable|image',
            'name' => 'filled|unique:books',
            'short_name' => 'nullable',
            'authors' => 'filled|json',
            'isbn' => 'nullable|max:13',
            'number_of_pages' => 'nullable|numeric',
            'publisher_id' => 'nullable|exists:publishers,id',
            'country_id' => 'nullable|exists:countries,id',
            'release_date' => 'nullable|date_format:Y-m-d',
        ];
    }
}
