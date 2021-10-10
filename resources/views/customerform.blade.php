<x-app-layout>
    <div>
        
    </div>
    <x-slot name="header">
    <!-- <div class="max-w-100mx-auto py-3 px-3 sm:px-3 lg:px-3hidden">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __() }}
           
        </h2>
    </div> -->
    </x-slot>


<style  type="text/css" background-color:#ddffff>
    @media only screen and (min-width: 600px) {
        #info input[type="text"] {
       position: absolute;
       right:10px;
       pointer-events: none;
        }
        #info label {
       position: relative;
       left:10px;
    
        }
 

  }
  input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}


.mytable>tbody>tr>td, .mytable>tbody>tr>th, .mytable>tfoot>tr>td, .mytable>tfoot>tr>th, .mytable>thead>tr>td, .mytable>thead>tr>th {
    padding: 5px;

}
.table_wrapper{
    display: block;
    overflow-x: auto;
    white-space: nowrap;
}

td{
    font-family:  Tahoma; 

}





  /* #info input[type="text"] {
     pointer-events: none;
        } */
 

@font-face {
    font-family: Tahoma;
    src: url('{{ url('font/Tahoma.ttf') }}');
}

</style>

    <div class="container pt-3">
        <div class="max-w-7xl mx-auto
        lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class=" border-b border-gray-200 " style="background-color:#ddffff;">
                    <!-- main boday -->
                    <!-- On rows -->

                  
                    <div class="container">
                        
                       
                        <form action="/submit" method="POST">
                            @csrf
                          
                            <div class="form-group">
                                <label for="selectCustomer" class="">Customer</label>
                                <select id="selectcustomer" name="selectCustomer" class="form-select w-100 h-100 select2" required>
                                    <option value="">--- Select Customer ---</option>
                                    @foreach ($customers as $key => $value)
                                    <option value="{{ $key }}">{{ $value }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="p-3 mb-3" style="background-color:rgb(255, 254, 225); border:1px solid #ccc; ">
                                <strong style="font-weight:bold" ><h5 id="CustId">Customer ID</h5></strong>
                                <h6 style="font-weight:bold" id="CustName">Customer Name</h6>
                                <small style="font-weight:bold" >Total Number of Invoice &nbsp&nbsp&nbsp :&nbsp&nbsp  </small><small id="count" style="font-weight:bold" >0</small><br>
                                <small style="font-weight:bold" >Customer Address  &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp&nbsp :&nbsp&nbsp  </small><small id="address">   </small><br>
                                <small style="font-weight:bold" >Contact Number   &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp&nbsp &nbsp :&nbsp&nbsp  </small><small id="contact"></small><br>
                                <small style="font-weight:bold" >Total Due Amount  &nbsp &nbsp &nbsp &nbsp  &nbsp &nbsp&nbsp :&nbsp&nbsp </small><small id="tda" style="font-weight:bold" class="text-danger">0</small><br>
                              
                                <small style="font-weight:bold" >Total Collection Amount  &nbsp&nbsp :&nbsp&nbsp  </small><small id="tca" style="font-weight:bold">0</small><br>
                             
                                <!-- <small style="font-weight:bold" >Contact Number   &nbsp &nbsp&nbsp &nbsp &nbsp &nbsp&nbsp &nbsp&nbsp &nbsp :&nbsp&nbsp  </small><small id="contact"></small> -->
                            </div>
                            <!-- <div id= "info" class="row mx-lg-5 px-lg-2  mb-5 border">
                                <div class="col-12 col-md-12 col-lg-6 form-group form-inline mt-3">
                                    <label require for="inputCustId">Customer Id </label>
                                    <input type="text" class="form-control ml-lg-2 " id="inputCustId" name="inputCustId" value="" aria-describedby="inputCustId" placeholder="">
                                </div>
                                <div class="col-12 col-lg-6 form-group form-inline mt-3">
                                    <label require for="inputTotalCollection">Total Collection Amount</label>
                                    <input type="text" class="form-control ml-lg-2" id="inputTotalCollection" name="inputTotalCollection" value="0" aria-describedby="inputTotalCollection" placeholder="">
                                </div>
                                <div class="col-12 col-lg-6 form-group form-inline mt-3">
                                    <label require for="inputCustName">Customer Name </label>
                                    <input type="text" class="form-control ml-lg-2" id="inputCustName" name="inputCustName" value="" aria-describedby="inputCustName" placeholder="">
                                </div>
                                <div class="col-12 col-lg-6 form-group form-inline mt-3">
                                    <label require for="inputTotalDue">Customer Total Due </label>
                                    <input type="text" class="form-control ml-lg-2" id="inputTotalDue" name="inputTotalDue" value="" aria-describedby="inputTotalDue" placeholder="">
                                </div>
                               
    
                            </div> -->
                            <div class="" style="visibility: hidden; position:absolute">
                                    <input type="text" class="form-control ml-lg-2" id="tempTotalDue" name="tempTotalDue" value="">
                                </div>
                           
                           

<div class="table_wrapper" style="background-color:rgb(255, 254, 225);">
<table class="table mytable table-striped"   >
  <thead>
    <tr>
      <th scope="col"> Sl.No </th>
      <th scope="col">Invoice No</th>
      <th scope="col">Due </th>
      <th scope="col">Collection</th>
      
      <th scope="col">Invoice Amount</th>
      <th scope="col">Invoice Date</th>
     <!-- <th scope="col">Description</th> -->
    
    </tr>
  </thead>
  <tbody id="custrow">
      <!-- TABLE-->
  </tbody>
</table>
</div>
                        
                            <br>
                            <button type="submit" class="btn btn-success w-100">Submit</button>
                        </form>
                    
                                 
                    </div>
                    <!-- /main boday -->
                </div>
            </div>
        </div>
    </div>
   
   

    @push('after-script')
   @if(session()->has('message'))
                            <script>
                                  Swal.fire({
                                    background: '#87adbd',   
                                                                                    
                                    toast: true,
                                    
                                    icon: 'success',
                                    title: "<a style='color:white>{{ Session::get('message') }}<a>",
                                    showClass: {
                                    popup: 'animate_animated animate_fadeInDown'
                                    },
                                    hideClass: {
                                        popup: 'animate_animated animate_fadeOutUp'
                                    },
                                        position: 'top',
                                    iconColor: 'white',
                                    showConfirmButton: false,
                                    timer: 3000,
                                    timerProgressBar: true,
                                     didOpen: (toast) => {
                                     toast.addEventListener('mouseenter', Swal.stopTimer)
                                     toast.addEventListener('mouseleave', Swal.resumeTimer)
                                     }
                                    
                                });
                            </script>
                        @endif

              

    <script type="text/javascript">
  
    jQuery('select[name="selectCustomer"]').select2({
      placeholder: "Select a Customer"

    });

    jQuery('select[name="selectCustomer"]').on('change', function() {

               var c_name = jQuery(this).val();
               var totaldue = 0;
               var totalinv = 0;
               var count=0;
               var dateinv;
               var day;
               var month;
               var year;

              // alert(c_name);
               if(c_name)
               {
                  jQuery.ajax({
                     url : 'customerform/getcustomer/'+ c_name,
                     type : "GET",
                     dataType : "json",
                     success:function(data)
                     { 
                         $('tbody[id="custrow"]').empty();
                        jQuery.each(data, function(key,value){
                        //    $('span[name="monthRange"]').empty();
                           $("#CustId").html(value.IDCUST);
                           $("#CustName").html(value.NAMECUST);
                           $("#address").html(value.TEXTSTRE1+value.TEXTSTRE2);
                           $("#contact").html(value.TEXTPHON1);
                           
                           totaldue=totaldue+parseFloat(value.AMTDUEHC);
                         
                         

                           totalinv=totalinv+parseFloat(value.AMTINVCHC);
                         
                           count++;
                        //    $dt = Carbon::now();
                        //      $currentdate =$dt->toDateString();
                        dateinv=value.DATEINVC;
                        //  dateinv="10/29-67";
                        if(dateinv.search("-")==-1 && dateinv.search("/")==-1){
                            dateinv=dateinv.slice(0, 4)+"-"+dateinv.slice(4, 6)+"-"+dateinv.slice(6, 8);

                        }
                        // else{
                        //     dateinv="0";
                        // }
                       
                      
                      
                           
                           $('tbody[id="custrow"]').append("<tr><td>"+count+"</td><td>"+value.IDINVC+"</td><td style='text-align:right;'>"+value.AMTDUEHC+"<td><input type='number' autocomplete ='off' class='form-control onkp' onclick='update_total_due(this)' name='inputCollectionAmount[]' style='text-align: right' value='' placeholder='' ></td><td style='text-align:right;'>"+value.AMTINVCHC+"</td><td>"+dateinv+"</td></tr>");
                          // $('tbody[id="custrow"]').append("<tr><td>"+value.IDINVC+"</td><td>"+value.DATEINVC+"</td><td>"+value.AMTDUEHC+"</td><td><input type='number' autocomplete ='off' class='form-control onkp' onclick='update_total_due(this)' name='inputCollectionAmount[]' value='' placeholder='' ></td><td>"+value.AMTINVCHC+"</td><td>"+value.DESCINVC+"</td></tr>");
                          // $('tbody[id="custrow"]').append("<input>"+value.IDCUST+"</td><td>"+value.IDINVC+"</td>");
                           $('tbody[id="custrow"]').append("<input type='hidden' class='form-control' name='inputCustId[]' value='"+value.IDCUST+"'>");
                           $('tbody[id="custrow"]').append("<input type='hidden' class='form-control' name='inputInvoiceDate[]' value='"+value.DATEINVC+"'>");
                           $('tbody[id="custrow"]').append("<input type='hidden' class='form-control' name='inputInvoiceNo[]' value='"+value.IDINVC+"'>");
                           $('tbody[id="custrow"]').append("<input type='hidden' class='form-control' name='inputDueAmount[]' value='"+value.AMTDUEHC+"'>");
                           $('tbody[id="custrow"]').append("<input type='hidden' class='form-control' name='inputInvAmount[]' value='"+value.AMTINVCHC+"'>");
                            //$('tbody[id="custrow"]').append("<input type='hidden' class='form-control' name='inputDescription[]' value='"+value.DESCINVC+"'>");
                           $('tbody[id="custrow"]').append("<input type='hidden' class='form-control' name='inputCodeempl[]' value='"+value.CODEEMPL+"'>");
                           //<input type='text' class='form-control' name='inputCustId[]' value=''>
                        //    $('input:text[name="inputInvDate"]').val(value.DATEINVC);
                        //    $('input:text[name="inputInvNo"]').val(value.IDINVC);
                        //    $('input:text[name="inputDueAmmount"]').val(value.AMTDUEHC);
                        //    $('input:text[name="inputInvAmount"]').val(value.AMTINVCHC);
                        //    $('input:text[name="inputRef"]').val(value.CODEEMPL);
                           

                       
                        });
                          totaldue=parseFloat(totaldue).toFixed(2);
                          $('input:text[name="tempTotalDue"]').val(totaldue);
                         
                        //  totaldue= new Intl.NumberFormat('en-IN').format(totaldue)
                        
                        $('small[id="tda"]').html(totaldue);
                     
                        $('small[id="count"]').html(count);
                        
                        //   totalinv=parseFloat(totalinv).toFixed(2);
                        // $('input:text[name="inputTotalInv"]').val(totalinv);
                     }
                     
                  });                    
                             
                }

    });
    
    </script>
    <script type="text/javascript">
        function update_total_due(e) {
            jQuery(".onkp").on('keydown keyup change', function() {
                    calculateSum();
                     });
           // var value = (this).val();
           

            //  alert(e.keyCode);
           
            
            // var current_total_due = jQuery('input:text[name="inputTotalDue"]').val();

            // var collection_amount = e.value;
            // var prev_collection_amount = parseInt(e.value/10);
            // var updated_total_due = parseFloat(current_total_due) - parseFloat(collection_amount) + prev_collection_amount;   
            // jQuery('input:text[name="inputTotalDue"]').val(updated_total_due); 
        }
 function calculateSum() {
    var sum = 0;
    //iterate through each textboxes and add the values
    $(".onkp").each(function() {
        //add only if the value is number
        if (!isNaN(this.value) && this.value.length != 0) {
            sum += parseFloat(this.value);
        }
    });
    
    
     var total_due = jQuery('input:text[name="tempTotalDue"]').val();
     var updated_total_due = parseFloat(total_due) - sum; 
 

sum= new Intl.NumberFormat('en-IN').format(sum);
updated_total_due= new Intl.NumberFormat('en-IN').format( updated_total_due)

    $("#tca").html(sum);
    //$("#tca").html(sum.toFixed(2));
	$("#tda").html(updated_total_due);
	//$("#tda").html(updated_total_due.toFixed(2));
}


    </script>
   @endpush  
  
</x-app-layout>