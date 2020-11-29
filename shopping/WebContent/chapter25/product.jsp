<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="menu.jsp" %>

<title>商品一覧</title>

<p>検索キーワードを入力してください。</p>
<form action="Product.action" method="post">
<input type="text" name="keyword">


<input type="submit" value="検索">

</form>
<hr>
<table style="border-collapse:separate;border-spacing:5px;">
<c:forEach var="product1" items="${list}">
	<tr>
	<td>商品${product1.id}</td>
	<td><img src="image1/${product1.id}.jpg" height="105"></td>
	<td>${product1.name}</td>
	<td>${product1.price}円</td>
	 <td>詳細：${product1.profile}</td>
	<td><a href="CartAdd.action?id=${product1.id}"><img src="image2/カートイン.png" height="25">カートに追加</a></td>

</c:forEach>
</table>


