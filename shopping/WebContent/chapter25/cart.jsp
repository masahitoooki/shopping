<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="menu.jsp" %>
<link rel="stylesheet" href="../css/NewFile.css">

<title>カートの中</title>

<c:choose>
	<c:when  test="${cart.size()>0}">
		<p>${cart.size()}種類の商品があります。</p>
		<hr>
	</c:when>
	<c:otherwise>
		<p>カートに商品がありません。</p>
	</c:otherwise>
</c:choose>

<table style="border-collapse:separate;border-spacing:10px;">
<c:forEach var="item" items="${cart}">
	<tr>
	<td>商品${item.product1.id}</td>
	<td><img src="image1/${item.product1.id}.jpg" height="105"></td>
	<td>${item.product1.name}</td>
	<td>${item.product1.price}円</td>
	<td>詳細：　${item.product1.profile}</td>
	
	<td>${item.count}個</td>
	
	<td>
	<a href="CartRemove.action?id=${item.product1.id}">カートから削除</a>
	</td>
	
	</tr>
	
</c:forEach>

</table>
<br><a href="../chapter25/Preview.action"><input type="submit" value="購入"></a>
<br>

<%@include file="../footer.html" %>

