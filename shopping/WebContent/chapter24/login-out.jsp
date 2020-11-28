<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="../chapter25/menu.jsp" %>
<title>ようこそ</title>

こんにちは、${customer.login}さん。
<p><a href="../chapter25/cart.jsp">カートに戻る</a></p>
<p><a href="Logout.action">ログアウト</a></p>

<%@include file="../footer.html" %>
