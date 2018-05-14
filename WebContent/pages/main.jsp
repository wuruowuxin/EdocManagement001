<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电子文档</title>
</head>
<body>
	
	<div>
		文档分类: <select id="categoryId">
			<option value="-1" <c:if test="${categoryId eq -1 }">selected="selected"</c:if> >全部</option>
			<c:forEach items="${categories }" var="obj">
				<option value="${obj.id }" <c:if test="${categoryId eq obj.id }">selected="selected"</c:if>>${obj.name }</option>
			</c:forEach>
		</select>
		<button id="selectBth">查询</button>
		<button id="addBth">新增电子文档</button>		
	</div>
	<table>
		<thead>
			<tr>
				<th colspan="6"><h2>电子文档列表</h2></th>
			</tr>
			<tr>
				<td>文档编号</td>
				<td>文档名称</td>
				<td>文档摘要</td>
				<td>上传人</td>
				<td>上传时间</td>
				<td>操作</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${entries }" var="obj" varStatus="i">
				<tr <c:if test="${i.index mod 2 == 0 }">style="background-Color:lightgreen"</c:if>>
					<td>${obj.id }</td>
					<td>${obj.title }</td>
					<td>${obj.summary }</td>
					<td>${obj.uploadUser }</td>
					<td><fmt:formatDate value="${obj.createDate }"/></td>
					<td>
						<a href="${ctx }/edocEntry/toUpdate/${obj.id }?categoryId=${categoryId }">修改</a>
						<a href="${ctx }/edocEntry/delete/${obj.id }?categoryId=${categoryId } & id=${obj.id}">删除</a>
					</td>
				</tr>
			</c:forEach>
			<c:if test="${not empty  msg }">
				<tr style="text-align: center;color: red" id="hideer"><td colspan="6">${msg}</td></tr>
			</c:if>
		</tbody>
	</table>
	<script type="text/javascript" src="${ctx }/static/js/jquery.js"></script>
<%-- 	<script type="text/javascript" src="${ctx }/static/css/main.css"></script> --%>
	<script type="text/javascript">
		$('#selectBth').click(function(){
			var categoryId = $('#categoryId').val();
			window.location='${ctx}/edocCategory/edocEntries?categoryId=' + categoryId;
		})
		$('#addBth').click(function(){
			var categoryId = $('#categoryId').val();
			window.location='${ctx}/pages/addEntry.jsp?categoryId=' + categoryId;
		})
		function hide(){
			$('#hideer').hide();
		}
		window.onload = setTimeout("hide()",5000);
	</script>
	
</body>
</html>