<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="updateLost.do" method="post">
		<table border="1">

			<tr>
				<td>描述丢失物品</td>
				<td><input type="text" name="lostDescribe"
					value="${lost.lostDescribe }"></td>
			</tr>
			<tr>
				<td>物品丢失时间</td>
				<td><input type="text" name="lostTime"
					value="${lost.lostTime }"></td>
			</tr>
			<tr>
				<td>物品丢失照片</td>
				<td><input type="text" name="lostHead"
					value="${lost.lostHead }"></td>
			</tr>
			<tr>
				<td>物品丢失地点</td>
				<td><input type="text" name="lostSite1"
					value="${lost.lostSite1 }"></td>
			</tr>
			<tr>
				<td>物品拾取地点</td>
				<td><input type="text" name="lostSite2"
					value="${lost.lostSite2 }"></td>
			</tr>
			<tr>
				<td>丢失物品类型</td>
				<td>
				
				
				<c:forEach items="${alltypes}" var="at">
					<c:set var="checked" value=""></c:set> 
                          
						 <c:forEach items="${lost.types }" var="t">
						
							<c:if test="${at.typeId == t.typeId }"> 
							
							<c:set var="checked" value="checked">
							</c:set>
							</c:if>
						</c:forEach> 
						<input type="checkbox" name="cids" value="${at.typeId }" ${checked}/>${at.typeName}			
				</c:forEach>
			
			</td>
			</tr>
			<tr>
				<td>
				<input type="text" name="lostId" value="${lost.lostId}"
					style="display: none">
					<input type="submit" value="修改">	
				</td>
			</tr>
		</table>
	</form>

</body>
</html>