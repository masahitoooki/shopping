<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="menu.jsp" %>
<title>購入画面</title>


<p>${cart.size()}種類の商品があります。</p>
<hr>

<table style="border-collapse:separate;border-spacing:10px;">
<c:forEach var="item" items="${cart}">
	<tr>
	<td>商品${item.product1.id}</td>
	<td><img src="image1/${item.product1.id}.jpg" height="96"></td>
	<td>${item.product1.name}</td>
	<td>${item.product1.price}円</td>
	<td>${item.count}個</td>
	</tr>
</c:forEach>
</table>
<hr>

<p><a href="../chapter25/select.jsp"><input type="submit" value="お支払方法"></a></p>

<form action="Purchase.action" method="post">
<p>お名前 <input type="text" name="name"></p>
<p>ご住所 <input type="text" name="address"></p>
<p><input type="submit" value="購入を確定"></p>
</form>

<%@include file="../footer.html" %>
