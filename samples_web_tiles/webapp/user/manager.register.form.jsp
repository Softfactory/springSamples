<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/include/directives.jsp"%>

   <br>
   <form action="/user/manager/register.html" method="POST">
   <table border="0" width="600" cellspacing="0">
      <tr>
         <th colspan="2">
            <center><b>운영자 등록</b></center>
            <font color="red">
               <form:errors path="manager"/>
               <spring:message code="${MESSAGE_CODE}" arguments="${MESSAGE_PARAMS}"/>
            </font>
         </th>
      </tr>
      <tr>
         <td width="150">아이디</td>
         <td width="450">
            <input name="id" value="${manager.id}" type="text"/>
            <form:errors path="manager.id"/>
         </td>
      </tr>
      <tr>
         <td>패스워드</td>
         <td>
            <input name="passwd" value="${manager.passwd}" type="password"/>
            <form:errors path="manager.passwd"/>
         </td>
      </tr>
      <tr>
         <td>패스워드 확인</td>
         <td>
            <input name="passwdVerify" value="${manager.passwd}" type="password"/>
            <form:errors path="manager.passwdVerify"/>
         </td>
      </tr>
      <tr>
         <td>이름</td>
         <td>
            <input name="name" value="${manager.name}" type="text"/>
            <form:errors path="manager.name"/>
         </td>
      </tr>
      <tr>
         <td>Email</td>
         <td>
            <input name="email" value="${manager.email}" type="text"/>
            <form:errors path="manager.email"/>
         </td>
      </tr>
      <tr>
         <td>사용자 타입</td>
         <td>
            <form:select path="manager.role" items="${template_options.role}"/>
            <form:errors path="manager.role"/>
         </td>
      </tr>
      <tr>
         <td colspan="2">
            <center><input type="submit"/></center>
         </td>
      </tr>
   </table>
   </form>
<%
//   com.company.core.util.WebAttrAnalyzer.analyze(request);
%>      