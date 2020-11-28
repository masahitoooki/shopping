<%@page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="menu.jsp" %>

<title>詳細です</title>



  <table style="border-collapse:separate;border-spacing:10px;">
<c:forEach var="details" items="${list}">
	<tr>
	<td>商品${details.id}</td>
	<td><img src="image1/${details.id}.jpg" height="105"></td>
	<td>${details.name}</td>
	<td>${details.price}円</td>
	<td>${details.profile}</td>
	
	
	
	<td><a href="CartAdd.action?id=${details.id}">カートに追加</a></td>
	</tr>
</c:forEach>
</table>

<%@include file="../footer.html" %>

<br><a href="../chapter25/Preview.action"><input type="submit" value="購入"></a>
<br>
