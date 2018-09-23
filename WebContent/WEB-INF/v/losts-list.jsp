<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>丢失者页面</title>
</head>
<body>
<table border="1">
	<tr>
		<td>描述丢失物品</td>
		<td>物品丢失时间</td>
		<td>物品丢失照片</td>
		<td>物品丢失地点</td>
		<td>物品拾取地点</td>
		<td>丢失物品类型</td>
		<td> 操作</td>
	</tr>
	<c:forEach items="${losts }" var="lost">
		<tr>
			<td>${lost.lostDescribe}</td>
			<td>${lost.lostTime}</td>
			<td>${lost.lostHead}</td>
			<td>${lost.lostSite1}</td>
			<td>${lost.lostSite2}</td>
			
			<td>
			<c:forEach items="${lost.types }" var="t"> 
				${t.typeName };
			</c:forEach>
			</td>
			<td><a href="getInsertFrom.do?lostId=${lost.lostId }">发布失物通知</a> <a href="getUpdateFrom.do?lostId=${lost.lostId }">修改以往通知</a></td>
		</tr>
		
	</c:forEach>
</table>

</body>
</html>