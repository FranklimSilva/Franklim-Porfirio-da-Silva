<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tabuada.aspx.cs" Inherits="Tabuada.Tabuada" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <title>Tabuada</title>
</head>
<body>
    <!---Faça um programa que receba um número e usando laços de repetição
        calcule e mostre a tabuada desse número. (1 ponto);--->
    <style>
        .divForm{
            display: table;
            width:100%;
            padding:3px;
            border-bottom:1px solid #000;

        }
        .divTable{
            display:inline-table;
            border:1px solid #000;
            margin: 2% auto;
            font-size:22px;
        }
    </style>
    <div class="container text-center">
        <h1>Tábuada</h1>
        <h3>Informe um número</h3>
        <input class="input-sm" placeholder="Digite um número" />
        <button class="btn btn-success">OK</button>
    </div>
    <hr />
       <asp:Label runat="server" id="divTabuada" class="text-center">
           <h2>Resultado</h2>
           <div class="divTable"></div>

       </asp:Label>

    <script type="text/javascript" src="/Scripts/jquery-3.3.1.js"></script>
    <script>
        $("#divTabuada").hide();
        $(document).ready(function () {
            $('button').click(function () {
                var x = $("input").val();
                $("#divTabuada").show();

                for (var i = 1; i <= 10; i++) {
                    var mult = x * i;
                    //alert(x + 'X' + i + '=' + mult);
                    var tabuada = document.getElementsByClassName('divTable');
                    jQuery(tabuada).append("<form class='text-center divForm'>" + x + ' X ' + i + ' = ' + mult + "</form>");
                }
            })
        })
    </script>
    
    
</body>
</html>
