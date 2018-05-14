<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新电子文档</title>
</head>
<body>
	<form action="${ctx }/edocEntry/update" method="post">
		<input name="id" type="hidden" value="${entry.id }">
		<input type="hidden" name="edocCategory.id" value="${entry.edocCategory.id }">
		<table>
			<thead>
				<tr>
					<td style="background-color: lightgreen" colspan="2">更新电子文档</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>文档编号<span style="color:red">(*)</span></td>
					<td>${entry.id }</td>
				</tr>
				<tr>
					<td>文档名称<span style="color:red">(*)</span></td>
					<td><input name="title" value="${entry.title }"></td>
				</tr>
				<tr>
					<td>文档摘要</td>
					<td><textarea name="summary">${entry.summary }</textarea></td>
				</tr>
				<tr>
					<td>上传人</td>
					<td><input name="uploadUser" value="${entry.uploadUser }"></td>
				</tr>
				<tr>
					<td>上传时间<span style="color:red">(*)</span></td>
					<td><input name="createDate" value="<fmt:formatDate value="${entry.createDate }"/>">(yyyy-MM-dd)</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="提交">
						<input type="button" value="返回" onclick="window.history.go(-1)">
					</td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>