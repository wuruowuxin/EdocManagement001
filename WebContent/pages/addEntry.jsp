<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增电子文档</title>
</head>
<body>
	<%
		request.setAttribute("categoryId", request.getParameter("categoryId"));
	%>

	<form action="${ctx }/edocEntry/add" method="post">
		<input type="hidden" name="edocCategory.id" value="${categoryId }">
		<table>
			<thead>
				<tr>
					<td style="background-color: lightgreen" colspan="2">增加电子文档</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>文档名称<span style="color: red">(*)</span></td>
					<td><input name="title"></td>
				</tr>
				<tr>
					<td>文档摘要</td>
					<td><textarea name="summary"></textarea></td>
				</tr>
				<tr>
					<td>上传人</td>
					<td><textarea name="uploadUser"></textarea></td>
				</tr>
				<tr>
					<td>上传时间<span style="color: red"></span></td>
					<td><input name="createDate">(yyyy-MM-dd)</td>
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