<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <c:import url="/WEB-INF/jsp/css.jsp"></c:import>
        <title>Detahes</title>
    </head>
    <body style="margin-top: 5%">
        <div class="col-lg-10 col-lg-offset-1">
            <h3 class="text-center">Detalhes - ${livro.titulo}</h3>
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover" id="dataTables-ver">
                    <thead>
                        <tr>
                            <th class="text-center">Titulo</th>
                            <th class="text-center">Descrição</th>
                            <th class="text-center">ISBN</th>
                            <th class="text-center">Preço</th>
                            <th class="text-center">Data de publicação</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr class="text-center">
                            <td>${livro.titulo}</td>
                            <td>${livro.descricao}</td>
                            <td>${livro.isbn}</td>
                            <td>${livro.preco}</td>
                            <td><fmt:formatDate pattern="dd/MM/yyyy" value="${livro.dataPublicacao}" /></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <a href="${linkTo[LivrosController].confirmaExclusao(livro.isbn)}"><button type="button" class="btn btn-default"><i class="fa fa-times"></i> Remover</button></a> 
            <a href="${linkTo[LivrosController].edita(livro.isbn)}"> <button type="button" class="btn btn-default"><i class="fa fa-edit"> Editar</i></button></a>
        </div>        
        <c:import url="/WEB-INF/jsp/scripts.jsp"></c:import>
        
        <script>
            $(document).ready(function () {
                $('#dataTables-ver').dataTable();
            });
        </script>        
    </body>
</html>