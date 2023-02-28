<?php

namespace Database\Seeders;

use App\Models\Publisher;
use Illuminate\Database\Seeder;

class PublisherSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $data = $this->factory();
        Publisher::insert($data);
    }

    public function factory(): array
    {
        return [
            [
                "publisher" => "Multnomah Publishers (Multnomah Books)",
            ],
            [
                "publisher" => "Plata Publishing",
            ],
            [
                "publisher" => "Bloomsbury",
            ],
            [
                "publisher" => "Addison-Wesley",
            ],
        ];
    }
}
