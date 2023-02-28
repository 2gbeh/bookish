<?php

namespace Database\Seeders;

use App\Models\Author;
use Illuminate\Database\Seeder;

class AuthorSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $data = $this->factory();
        Author::insert($data);
    }

    public function factory(): array
    {
        return [
            [
                "photo" => "https://m.media-amazon.com/images/I/41Dq72Ec5dL._SY600_.jpg",
                "author" => "Bruce Wilkinson",
                "pen_name" => null,
            ],
            [
                "photo" => "https://m.media-amazon.com/images/I/31H4fUBky1L._SY600_.jpg",
                "author" => "Robert T. Kiyosaki",
                "pen_name" => null,
            ],
            [
                "photo" => "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/J._K._Rowling_2010.jpg/220px-J._K._Rowling_2010.jpg",
                "author" => "Joanne Rowling",
                "pen_name" => "J.K. Rowling",
            ],
            [
                "photo" => null,
                "author" => "Alfred V. Aho",
                "pen_name" => null,
            ],
            [
                "photo" => null,
                "author" => "Ravi Sethi",
                "pen_name" => null,
            ],
            [
                "photo" => null,
                "author" => "Jeffrey D. Ullman",
                "pen_name" => null,
            ],
        ];
    }
}
