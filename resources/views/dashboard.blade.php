<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Chemist Form') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200 ">
                    <!-- main boday -->
                  
                    <div class="container">
                       
                        <form action="/submit" method="POST">
                            @csrf
                            <div class="form-group">
                                <label for="inputTerritory">TSO Tr. Code</label>
                                <input type="text" class="form-control" name="inputTerritory" value="{{ Auth::user()->name }}" aria-describedby="territoryHelp" placeholder="" readonly>
                            </div>
                            <div class="form-group">
                                <label for="selectCustomer" class="">Chemist</label>
                                <select id="selectcustomer" name="selectCustomer" class="form-select w-100 h-100 select2" required>
                                    <option value="">--- Select Chemist ---</option>
                                    @foreach ($customers as $key => $value)
                                    <option value="{{ $key }}">{{ $value }}</option>
                                    @endforeach
                                </select>
                            </div>

                            <div class="form-group">
                                <label require for="inputName">Chemist Name</label>
                                <input type="text" class="form-control" name="inputName" value="" aria-describedby="inputName" placeholder="" readonly>
                            </div>
                            <div class="form-group">
                                <label for="inputId">Chemist ID</label>
                                <input type="text" class="form-control" name="inputId" value="" aria-describedby="inputID" placeholder="" readonly>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress">Adress</label>
                                <input type="text" class="form-control" name="inputAddress" value="" aria-describedby="inputAddress" placeholder="" readonly>
                            </div>

                            <div class="form-group">
                                <label for="inputAvgSales">Avg. Sales (per month)</label>
                                <input type="text" class="form-control" name="inputAvgSales" value="" aria-describedby="inputAvgSales" placeholder="" readonly>
                            </div>

                            <div class="form-group">
                            <label for="inputAmount">Max. Sales Amount (last <span name="monthRange">12</span>M)</label> 
                            
                                <input type="text" class="form-control" name="inputAmount" value="" aria-describedby="inputAmount" placeholder="" readonly> 
                            </div>
                            <div class="form-group">
                                <label for="inputMonthYear">Max Sales Month-Year</label>
                                <input type="text" class="form-control" name="inputMonthYear" value="" aria-describedby="inputMonthYear" placeholder="" readonly>
                            </div>
                            
                            <div class="form-group">
                                <div>
                                     <label for="inputWith">FP Accompanied By</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="Self" required>
                                    <label class="form-check-label" for="inlineRadio1">Self</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="ATS">
                                    <label class="form-check-label" for="inlineRadio2">ATS</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="VTS">
                                    <label class="form-check-label" for="inlineRadio3">VTS</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio4" value="RSM">
                                    <label class="form-check-label" for="inlineRadio3">RSM</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio5" value="FM">
                                    <label class="form-check-label" for="inlineRadio3">FM</label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="inputPotentiality">Chemist Potentiality/Monthly Sale</label>
                                <input type="number" class="form-control" name="inputPotentiality" value="" aria-describedby="inputPotentiality" placeholder="" required>
                            </div>
                            <div class="form-group">
                                <label for="inputFp">Order Collection value on FP Date</label>
                                <input type="number" class="form-control" name="inputFp" value="" aria-describedby="inputFp" placeholder="" required>
                            </div>
                            

                            <br>
                            <button type="submit" class="btn btn-primary w-100">Submit</button>
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
                                    popup: 'animate__animated animate__fadeInDown'
                                    },
                                    hideClass: {
                                        popup: 'animate__animated animate__fadeOutUp'
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
      placeholder: "Select a Chemist"

    });

    jQuery('select[name="selectCustomer"]').on('change', function() {

               var c_id = jQuery(this).val();
               //alert("c_id");
               if(c_id)
               {
                  jQuery.ajax({
                     url : 'chemistform/getcustomername/' +c_id,
                     type : "GET",
                     dataType : "json",
                     success:function(data)
                     { 
                        jQuery.each(data, function(key,value){
                           $('span[name="monthRange"]').empty();
                           $('input:text[name="inputName"]').val(value.cust_name);
                           $('input:text[name="inputId"]').val(value.customer);
                           $('input:text[name="inputAddress"]').val(value.cust_address);
                           $('input:text[name="inputAmount"]').val(value.Amount);
                           $('span[name="monthRange"]').append(value.month_range);
                          
                            var parts = value.MonthYear.split('/');       
                            yr = parts[2][2]+parts[2][3]; //special yr format, take last 2 digits
                            day = parts[1];
                            var month = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                            monthnum = parseInt(parts[0]);
                            month= month[monthnum-1];
                            var newdate =month+'-'+yr;
                           $('input:text[name="inputMonthYear"]').val(newdate);
                        });
                     }
                     
                  });                    
                             
                }

    });

    </script>
  @endpush  
  
</x-app-layout>