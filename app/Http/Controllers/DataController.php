<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customers;
use Carbon\Carbon;
use Auth;
use DB;

class DataController extends Controller
{
     
     public function customerformindex()
     {
      $empl_name = Auth::user()->name;

      $customers = DB::table('info')
      ->where('CODEEMPL', $empl_name)
      ->orderBy('NAMECUST')->pluck("NAMECUST","NAMECUST");
     // dd($customers);
 
      return view('customerform',compact('customers'));
    
     }

     public function saveform(Request $request)
     {

    
      $dt = Carbon::now();
      $currentdate =$dt->toDateString();
      $currentuser_name = auth()->user()->name; 
      //dd($currentdate);


         foreach($request->inputCollectionAmount as $key=>$req)
         if($req!=''){

      
             $customer = new Customers;  //MODEL 
             $customer->CustoemrID =$request->inputCustId[$key];
             $customer->InvNo=$request->inputInvoiceNo[$key];
             $customer->InvDate =$request->inputInvoiceDate[$key];
             $customer->Due_Amount = $request->inputDueAmount[$key];
             $customer->Collection_Amount = $request->inputCollectionAmount[$key];
             $customer->InvAmount =$request->inputInvAmount[$key];
            // $customer->Description =$request->inputDescription[$key];
             $customer->employ_code =$request->inputCodeempl[$key];
             $customer->CollecitonDate=$currentdate;
             $customer->employ_name=$currentuser_name;
          
        
            $customer->save();

         }
       return redirect('customerform')->with('message', 'Form Submitted!');         
     }

     public function allcustomer($name)
     {

  $empl_name = Auth::user()->name;
  $customer = DB::table("info")->where('CODEEMPL',$empl_name )->where("NAMECUST",$name)->get();
  return json_encode($customer);


    
     }




//      public function show(Request $request, $key){
//         $mr_info=DB::table('info')
//             ->where('CUSTID',Crypt::decryptString($key))
//             ->frist();
//             echo($request->IDCUST[$key]);
          
//             // return view('customerform',
//             // compact('mr_info'));
         
     
 
//    }
}
