<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="pt-BR">
<head>
  <title>Sistema Estudantil</title>
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <meta name="google-signin-client_id" content="664313578549-rknjkd783j5p0sgqn0e0rhtf87rgmpof.apps.googleusercontent.com">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
   		<a class="navbar-brand" href="index.jsp">Início</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.jsp">Cadastrar Matéria</a></li>
        <li><a href="buscarCurso.jsp">Listar Matérias</a></li>
      </ul>
    </div>
  </div>
</nav>
<br/>
<br/>
<br/>
<br/>
<br/>

<div class="container">
	<form action="cadastrarCurso" method="post">
		<div class="form-group">
		    <label for="name">Matéria:</label>
		    <input type="text" class="form-control" name="name" placeholder="Ex.: Pesquisa Operacional">
		    <small id="name" class="form-text text-muted">Digite o nome da matéria a ser cadastrada.</small>
		</div>
		<div class="form-group">
		    <label for="semester">Semestre:</label>
		    <input type="text" class="form-control" name="semester"
		    onkeypress="return event.charCode >= 48 && event.charCode <= 57" placeholder="Ex.: 4">
		    <small id="semester" class="form-text text-muted">Digite o semestre em que a matéria está sendo cursada.</small>
		</div>

		<div>
			<%
			String mensagem = (String) request.getAttribute("mensagem");
			if (mensagem != null)
				out.print(mensagem);
			%>
	  	</div>
	  <button type="submit" name="save" class="btn btn-primary">Cadastrar Matéria</button>
	</form>
</div>
	
<footer class="page-footer font-small blue navbar-fixed-bottom">
 <div class="footer-copyright text-center py-3">© 2021 Copyright:
   GU301262X & GU3012573<br>
   Desenvolvido a princípio pelos alunos <b>Pedro</b> e <b>Diogo</b> para a matéria de <b>PWE</b> e devidamente adaptado para esta atividade pelos mesmos.
 </div>
</footer>
</body>
</html>