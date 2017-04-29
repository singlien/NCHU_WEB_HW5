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

      td,th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
      }
      tr:nth-child(even) {
        background-color: #dddddd;
      }

    </style>
  </head>
  <body>
    <h1>履歷表生成器</h1>
    <% request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("Name");
    String sex = request.getParameter("sex");
    String byear = request.getParameter("BirthYear");
    String bmonth = request.getParameter("BirthMonth");
    String bday = request.getParameter("BirthDay");
    String school = request.getParameter("School");
    String sy = request.getParameter("schoolyear");
    String dept = request.getParameter("department");
    String[] lang = request.getParameterValues("lang");
    String[] hobby = request.getParameterValues("hobby");
    String selfIntro = request.getParameter("self-intro");
     %>
    <table>
      <tr>
        <td>姓名</td>
        <td><%=name%></td>
        <td rowspan="3">大頭照</td>
      </tr>
      <tr>
        <td>性別</td>
        <td><%=sex%></td>
      </tr>
      <tr>
        <td>生日</td>
        <td><% out.write(byear+"年"+bmonth+"月"+bday+"日");%></td>
      </tr>
      <tr>
        <td>學校</td>
        <td colspan="2">
          <% out.write(school); %>
        </td>
      </tr>
      <tr>
        <td>系級</td>
        <td colspan="2">
          <% out.write(sy);%>
        </td>
      </tr>
      <tr>
        <td>興趣</td>
        <td colspan="2"><%
        if(hobby!=null){
          if(hobby.length==1){
            out.write(hobby[(hobby.length-1)]);
            return;
          }
          for(int i=0;i<(hobby.length-1);i++){
            out.write(hobby[i]+"、");
          }
          out.write(hobby[(hobby.length-1)]);
        }
        %></td>
      </tr>
      <tr>
        <td>專長</td>
        <td colspan="2"><%
        if(lang!=null){
          if(lang.length==1){
            out.write(lang[(lang.length-1)]);
            return;
          }
          for(int i=0;i<(lang.length-1);i++){
            out.write(lang[i]+"、");
          }
          out.write(lang[(lang.length-1)]);
        }
        %></td>
      </tr>
      <tr>
        <td>自我介紹</td>
        <td colspan="2"><%=selfIntro%></td>
      </tr>
    </table>


  </body>
</html>
