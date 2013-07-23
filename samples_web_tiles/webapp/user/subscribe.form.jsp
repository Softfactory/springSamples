<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/include/directives.jsp"%>

   <br>
   <form action="/user/subscribe.html" method="POST">
   <table border="0" width="600" cellspacing="0">
      <tr>
         <th colspan="2">
            <center><b>회원 가입</b></center>
            <font color="red">
               <form:errors path="user"/>   
               <spring:message code="${MESSAGE_CODE}" arguments="${MESSAGE_PARAMS}"/>
            </font>
         </th>
      </tr>
      <tr>
         <td width="150">아이디</td>
         <td width="450">
            <input name="id" value="${user.id}" type="text"/>
            <form:errors path="user.id"/>
         </td>
      </tr>
      <tr>
         <td>비밀번호</td>
         <td>
            <input name="passwd" value="${user.passwd}" type="password"/>
            <form:errors path="user.passwd"/>
         </td>
      </tr>
      <tr>
         <td>비밀번호 확인</td>
         <td>
            <input name="passwdVerify" value="${user.passwdVerify}" type="password"/>
            <form:errors path="user.passwdVerify"/>
         </td>
      </tr>
      <tr>
         <td>이름</td>
         <td>
            <input name="name" value="${user.name}" type="text"/>
            <form:errors path="user.name"/>
         </td>
      </tr>
      <tr>
         <td>Email</td>
         <td>
            <input name="email" value="${user.email}" type="text"/>
            <form:errors path="user.email"/>
         </td>
      </tr>
      <tr>
         <td colspan="2">
            <center><input type="submit"/></center>
         </td>
      </tr>
   </table>
   </form>

<%--
   com.company.core.util.WebAttrAnalyzer.analyze(request);
--%>   