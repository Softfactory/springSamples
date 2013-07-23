<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/include/directives.jsp"%>

   <br>
   <table border="0" width="600" cellspacing="0">
      <tr>
         <th colspan="2">
            <center><b>회원 가입이 완료되었습니다.</b></center>
         </th>
      </tr>
      <tr>
         <td width="150">아이디</td>
         <td width="450">${user.id}</td>
      </tr>
      <tr>
         <td>이름</td>
         <td>${user.name}</td>
      </tr>
      <tr>
         <td>Email</td>
         <td>${user.email}</td>
      </tr>
   </table>
   
<br><br>