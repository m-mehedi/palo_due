<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Laravel') }}</title>
        
        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap">

        <!-- Styles -->
        <link rel="stylesheet" href="{{ asset('css/app.css') }}">

        <!-- Scripts -->
        <script src="{{ asset('js/app.js') }}" defer></script>

         <!-- Bootstrap CSS -->
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
         
         <!-- Ajax -->
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script> 
         
         <!-- Select2 -->
         <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
         
         <!-- sweetalert2 -->
         <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
         
         <!-- animate css -->
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
         <style>
            footer{
                position: relative;
                bottom:30px;
                
            }
         </style>
         
    </head>
    <body class="font-sans antialiased">
        <div class="min-h-screen bg-gray-10 pb-5" id=body_div>
            @include('layouts.navigation')

            <!-- Page Heading -->
            <header class="bg-white shadow">
               
                    {{ $header }}
                
            </header>

            <!-- Page Content -->
            <main>
                {{ $slot }}
            </main>
           
        </div>
        <footer class="footer">
                <div class="container text-center">
                    <span class="">©2021 Transcom ERP.ALL Rights Reserved</span>
                </div>
       </footer>
       
         <!-- Bootsrap Javascript -->
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
       
       <!-- Ajax -->
       <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
       
       <!-- select2 -->
       <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
       
       <!-- sweetalert2 
       <script src="sweetalert2.all.min.js"></script>-->
       @stack('after-script')
    </body>
</html>
