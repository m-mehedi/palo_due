<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\DataController;
use Illuminate\Support\Facades\Request;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', function () {
    return view('homepage');
})->middleware(['auth']);


Route::get('/homepage', function () {
    return view('homepage');
});

// Select to data get
Route::get('/customerform','App\Http\Controllers\DataController@customerformindex')->name('dashboard');

// Route::get('/customerform', function () {
//     $empl_name = Auth::user()->name;

//      $customers = DB::table('info')->where('CODEEMPL', $empl_name)->orderBy('NAMECUST')->pluck("NAMECUST","NAMECUST");

//      return view('customerform',compact('customers'));
   
// })->middleware(['auth'])->name('dashboard');

Route::get('/home', function () {
    $empl_name = Auth::user()->name;

     return view('home');
   
})->middleware(['auth']);


// when select salesman   then customer info get



// Route::get('customerform/getcustomer/{id}', function ($name) {

//     $empl_name = Auth::user()->name;
//     $customer = DB::table("info")->where('CODEEMPL',$empl_name )->where("NAMECUST",$name)->get();
//     return json_encode($customer);
// });

 Route::get(' customerform/getcustomer/{name}','App\Http\Controllers\DataController@allcustomer');
 Route::post('submit','App\Http\Controllers\DataController@saveform');

// Route::get('customerform/getcustomer/{id}','DataController@getCustomer');

require __DIR__.'/auth.php';
