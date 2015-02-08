<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <c:import url="/WEB-INF/jsp/css.jsp"></c:import>
            <title>Insert title here</title>
    </head>
    <body>
        <div class="alert alert-danger">
                Deseja realmente deletar esse registro? <br/>
            ${livro.titulo}

            <a href="${linkTo[LivrosController].remove(livro.isbn)}">Deletar</a>
        </div>
    </body>
</html>