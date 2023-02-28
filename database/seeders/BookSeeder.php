<?php

namespace Database\Seeders;

use App\Models\Book;
use Illuminate\Database\Seeder;

class BookSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $data = $this->factory();
        Book::insert($data);
    }

    public function factory(): array
    {
        return [
            [
                "cover" => "https://m.media-amazon.com/images/I/51lqFNtS9zL._SX336_BO1,204,203,200_.jpg",
                "name" => "The Prayer of Jabez: Breaking Through to the Blessed Life",
                "short_name" => "The Prayer of Jabez",
                "authors" => '[1]',
                "isbn" => "978-1576738108",
                "number_of_pages" => 93,
                "publisher_id" => 1,
                "country_id" => 236,
                "release_date" => "2000-04-24",
            ],
            [
                "cover" => "https://m.media-amazon.com/images/I/51Hfv2MfNGL._SX331_BO1,204,203,200_.jpg",
                "name" => "Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not!",
                "short_name" => "Rich Dad Poor Dad",
                "authors" => '[2]',
                "isbn" => "978-1612681139",
                "number_of_pages" => 336,
                "publisher_id" => 2,
                "country_id" => 236,
                "release_date" => "2022-04-05",
            ],
            [
                "cover" => "https://upload.wikimedia.org/wikipedia/en/thumb/6/6b/Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg/220px-Harry_Potter_and_the_Philosopher%27s_Stone_Book_Cover.jpg",
                "name" => "Harry Potter and the Philosopher's Stone",
                "short_name" => null,
                "authors" => '[3]',
                "isbn" => "978-0-7475-3269-9",
                "number_of_pages" => 223,
                "publisher_id" => 3,
                "country_id" => 235,
                "release_date" => "1997-06-26",
            ],
            [
                "cover" => "https://m.media-amazon.com/images/I/51FWXX9KWVL._SX384_BO1,204,203,200_.jpg",
                "name" => "Compilers: Principles, Techniques, and Tools",
                "short_name" => null,
                "authors" => '[4,5,6]', // Alfred V. Aho  (Author), Ravi Sethi  (Author), Jeffrey D. Ullman  (Author)
                "isbn" => "978-0201100884",
                "number_of_pages" => 796,
                "publisher_id" => 4, // Addison-Wesley
                "country_id" => null,
                "release_date" => "1985-01-01",
            ],
        ];
    }
}
