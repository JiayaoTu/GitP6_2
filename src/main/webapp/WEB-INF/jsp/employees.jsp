<%@ page import="com.example.employeeapi.datasource.EmployeeRepository" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.example.employeeapi.datasource.TestEmployeeRepository" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.employeeapi.model.Employee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>员工列表</title>
</head>
<body>
<table style="width:60%;border:1px black solid">
    <thead>
    <tr bgcolor="black"style="color: #fff;">
        <th>编号</th>>
        <th>姓名</th>>
        <th>年龄</th>>
        <th>性别</th>>
    </tr>
    </thead>
    <tbody>
    <%
        EmployeeRepository employeeRepository = new TestEmployeeRepository();
        List<Employee> employees = employeeRepository.getAllEmployees();
        for (int i = 0; i < employees.size(); i++) {
    %>
    <tr align="center" bgcolor="cococo">
        <td><%out.print(employees.get(i).getId());%></td>
        <td><%out.print(employees.get(i).getName());%></td>
        <td><%out.print(employees.get(i).getAge());%></td>
        <td><%out.print(employees.get(i).getGender());%></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</body>
</html>