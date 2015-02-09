<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <c:import url="/WEB-INF/jsp/css.jsp"></c:import>
            <title>Todos os livros</title>
    </head>
    <body>            
        <div class="col-lg-10 col-lg-offset-1">

            <h3 class="text-center">Lista de Livros</h3>

        <c:if test="${not empty mensagem}">
            <div class="alert alert-success alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <p class="mensagem">${mensagem}</p>
            </div>
        </c:if>

        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover" id="dataTables-lista">
                <thead>
                    <tr>                            
                        <th class="text-center">Titulo</th>
                        <th class="text-center">Descrição</th>
                        <th></th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${livroList}" var="livro">
                        <tr class="text-center">
                            <td>${livro.titulo}</td>                                
                            <td>${livro.descricao}</td>
                            <td><a href="${linkTo[LivrosController].edita(livro.isbn)}"> Modificar </a></td>
                            <td><a href="${linkTo[LivrosController].detalhes(livro.isbn)}">Detalhes</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <br>
        <a href="${linkTo[LivrosController].formulario}"><button class="btn btn-primary">Adicionar novo</button></a>
    </div>
    <c:import url="/WEB-INF/jsp/scripts.jsp"></c:import> 
    <script>
        $(document).ready(function () {
            $('#dataTables-lista').dataTable();
        });
    </script>
    </body>
</html>