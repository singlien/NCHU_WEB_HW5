<%@page contentType="text/html;charset=UTF-8"%>
<html>
<head>
  <title>履歷表生成器</title>
<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style></head>
<body>
<h1>履歷表生成器</h1>
<%
String name = request.getParameter("Name");
String sex = request.getParameter("Sex");
String byear = request.getParameter("BirthYear");
String bmonth = request.getParameter("BirthMonth");
String bday = request.getParameter("BirthDay");

String school = request.getParameter("School");
String sy = request.getParameter("schoolyear");
String dept = request.getParameter("department");

%>
<table>
  <tr>
	<td>姓名</td>
    <td><%=name%></td>
  </tr>
  <tr>
    <td>性別</td>
    <td><%=sex%></td>
  </tr>
  <tr>
    <td>生日</td>
    <td><%
	out.write(byear+"年"+bmonth+"月"+bday+"日");
	%></td>
  </tr>
    <tr>
	<td>學校</td>
    <td><%
  out.write(school);
  %></td>
  </tr>
      <tr>
	<td>系級</td>
    <td><%
  out.write(sy);
  %></td>
  </tr>
      <tr>
	<td>興趣</td>
    <td><%
  out.write(dept);
  %></td>
  </tr>
</table>
<%
out.write(name+sex+byear+bmonth+bday);
%>

</body>
</html>
