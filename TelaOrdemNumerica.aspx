<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaOrdemNumerica.aspx.cs" Inherits="OrdemNumerica.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<head runat="server">
    <title>Questão 1</title>
    <style>
        * {
            font-family: 'Roboto', sans-serif;
            box-sizing: border-box;
        }

        body {
            background-color: #f6f8fc;
        }

        .content {
            width: 100vw;
            height: 100vh;
            padding: 1rem;
            background-color: #fff;
        }

        input {
            border-radius: 8px;
        }

        .ordCrescente {
            font-size: 35px;
        }

        @media screen and (min-width: 992px) {
            .content {
                max-width: 992px;
                height: auto;
                margin: 1rem auto;
                border-radius: 1rem;
            }
        }
    </style>
</head>
<body>

    <!--Crie uma aplicação que permita a digitação de números e mostre esses
números em tela de forma ordenada. Ou seja, desenvolver uma lógica que
deverá permitir a inclusão de n números em qualquer sequência e em seguida
exibi-los em ordem crescente. (1 ponto);-->
    <div class="container text-center">
        <div class="col-12">
            <h2>Informe 3 numeros para verificar a ordem crescente:</h2>
        </div>

        <div class="col-12 media">
            <input class="numberInputP" placeholder="Digite o primeiro número" maxlength="1" />
        </div>
        <div class="col-12 media">
            <input class="numberInputS" placeholder="Digite o segundo número" maxlength="1" />
        </div>
        <div class="col-12 media">
            <input class="numberInputT" placeholder="Digite o terceiro número" maxlength="1" />
        </div>

        <button id="btnOk" class="btn btn-primary btnOk media">OK</button><br />
        <button type="button" id="GetFile">Get File!</button>


        <div class="col-12 media ordCrescente">
            <h2>Ordem Crescente:</h2>
            <span id="ordCrescente"></span>
        </div>
    </div>

    <script type="text/javascript" src="/Scripts/jquery-3.3.1.js"></script>
    <script>
        $(".ordCrescente").hide();
        $(document).ready(function () {
            $('#btnOk').click(function () {

                var a = $(".numberInputP").val();
                var b = $(".numberInputS").val();
                var c = $(".numberInputT").val();
                var num = [a, b, c];

                for (var i = 0; i < 1; i++) {
                    $(".ordCrescente").show();
                    var ordenar = document.getElementById('ordCrescente');
                    $(ordenar).append("<span id='spnOrdemNumeros'><strong>" + num.sort() + "</strong></span>");

                }
                //$(function() {
                //setTimeout(function(){ location.reload(); }, 2000);
                //});

            })

        })
    </script>

    <script>
        function ArquivoTxt() {
            $('#btnSalvar').on('click', function () {
                $.ajax({
                    url: 'http://localhost:53612/TelaOrdemNumerica.aspx',
                    method: 'GET',
                    xhrFields: {
                        responseType: 'blob'
                    },
                    success: function (data) {
                        var a = document.createElement('a');
                        var url = window.URL.createObjectURL(data);
                        a.href = url;
                        a.download = 'myfile.txt';
                        document.body.append(a);
                        a.click();
                        a.remove();
                        window.URL.revokeObjectURL(url);
                    }
                });
            });
        }

    </script>

</body>
</html>

