<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="br.com.redelem.bean.Usuario"%>
<%@page import="br.com.redelem.controler.UsuarioControler"%>

<%
    String login = request.getParameter("login");
    String senha = request.getParameter("senha");
    
    Usuario usu = new Usuario(0,"",login,senha,"","");
    UsuarioControler usucont = new UsuarioControler();
    
    usu = usucont.validaUsuario(usu);
    session.setAttribute("UsuarioLogado",usu);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu - Rede Lembranças</title>
    </head>
    <body>
        <h1>Perfil Atual</h1>
        <table border="0">
            <tr>
                <td><b>ID:</b></td>
                <td> <%=usu.getId()%> </td>
            </tr>    
             <tr>
                <td><b>Nome:</b></td>
                <td> <%=usu.getNome()%></td>
            </tr>
            <tr>
                <td><b>Usuário:</b></td>
                <td> <%=usu.getLogin()%> </td>
            </tr>
            <tr>
                <td><b>Senha:</b></td>
                <td> <%=usu.getSenha()%></td>
            </tr>
            <tr>
                <td><b>Status:</b></td>
                <td> <%=usu.getStatus()%></td>
            </tr>
            <tr>
                <td><b>Tipo:</b></td>
                <td> <%=usu.getTipo()%></td>
            </tr>
        </table>
       
        <h1>Opções:</h1>
        <h2>Gerenciar Usuários</h2>
        <a href="../usuario/consultarUsuario.jsp">Consultar (Alterar e Excluir)</a><br>
        <a href="../usuario/inserirUsuario.jsp">Inserir novo Usuario</a>
    </body>
</html>