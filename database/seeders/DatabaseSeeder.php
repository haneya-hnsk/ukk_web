<?php

namespace Database\Seeders;

// use Facade\FlareClient\Stacktrace\File;
use Faker\Factory;
use Illuminate\Database\Seeder;
use Illuminate\Http\File as HttpFile;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(10)->create();

        $faker = Factory::create();

        $categories = ['Pendidikan', 'Novel', 'Sejarah', 'Agama'];

        $i = 1;
        foreach($categories  as $category){
            $data[$i] = [
                'nama_kategori' => $category
            ];
            $i++;
        }
        DB::table('kategori_buku')->insert($data);


        // foreach()
        $path = public_path('storage/book/file');

        $filesInFolder = File::allFiles($path);

        $pdfNames = [];
        foreach($filesInFolder as $path) { 
              $file = pathinfo($path);
              echo $file['filename'] ;
              array_push($pdfNames, $file['filename']);
         } 

         $j=0;
         foreach($pdfNames as $pdfName){
            $dataBuku[$j++] = [
                'judul' => $pdfName,
                'penulis' => $faker->firstName(),
                'penerbit' => $faker->lastName(),
                'tahun_terbit' => '2020',
                'file' => $pdfName . '.pdf',
                'thumbnail' => $j .  '.jpg',
                'kategori_id' => $faker->numberBetween(1    ,4),
                'created_at' => now()

            ] ;
         }
         DB::table('buku')->insert($dataBuku);

         for($i = 0 ; $i<=200;$i++){
            $dataUlasan[$i] = [
                'user_id' => $faker->numberBetween(1,10),
                'buku_id' => $faker->numberBetween(1,10),
                'ulasan' => $faker->paragraph(),
                'rating' => $faker->numberBetween(1,10),
                'created_at' => now()

            ];
         }
         DB::table('ulasan_buku')->insert($dataUlasan);


        
 

    }
}
