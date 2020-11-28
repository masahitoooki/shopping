<%@page contentType="text/html; charset=UTF-8" %>
<%@include file="menu.jsp" %>
<title>お支払い方法の選択</title>


<form action="select" method="post">


<p>お支払い方法を選択してください</p>
<input type="radio" name="payment" value="カード" checked>カード
<input type="radio" name="payment" value="代金引換">代金引換 
<input type="radio" name="payment" value="銀行振込">銀行振込 
<input type="radio" name="payment" value="コンビニ">コンビニ



<p>お知らせメールの受信を希望しましか？</p>
<p><input type="checkbox" name="mail">お勧め商品のメールを受け取る</p>

<p><input type="submit" value="確定"></p>

</form>



<%@include file="../footer.html" %>