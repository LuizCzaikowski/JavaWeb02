<%-- 
    Document   : index
    Author     : lczaikowski
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <!------ Include the above in your HEAD tag ---------->
        <title>Soma de valores por parametros POST</title>
    </head>
    <body>
        
        Num1: <input type="text" id="num1">
        <br>
        Num2: <input type="text" id="num2">
        <br>
        <button onClick="doPost()" >Envio por Post</button>
        
        <textarea rows="5" columns="10" id="retorno"></textarea>
        
        <script>
            const campoRetorno = document.getElementById('retorno');
            const num1 = document.getElementById('num1');
            const num2 = document.getElementById('num2');
            
            function doPost() {
                const formData = new FormData;
                FormData.append('num1', num1.value);
                FormData.append('num2', num1.value);
                
                const config = {
                    method: 'POST',
                    body: FormData
                };
                fetch('http://localhost:8080/JavaWebTW/index', config)
                .then(function (resposta) {
                    resposta.text()
                    .then(function(texto) {
                        campoRetorno.value = texto;
                    };
                });
            }
        </script>

    </body>

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</html>
