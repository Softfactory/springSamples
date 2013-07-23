<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/include/directives.jsp"%>

   <br>
   <table border="0" width="600" cellspacing="0">
      <tr>
         <th colspan="2">
            <center><b>회원 정보</b></center>
         </th>
      </tr>
      <tr>
         <td width="150">아이디</td>
         <td width="450">&nbsp;${user.id}</td>
      </tr>
      <tr>
         <td>이름</td>
         <td>&nbsp;${user.name}</td>
      </tr>
      <tr>
         <td>Email</td>
         <td>&nbsp;${user.email}</td>
      </tr>
      <!--
      <tr>
         <td>타입</td>
         <td>&nbsp;${CACHE_USR[user.role.symbol]}</td>
      </tr>
      -->
      <tr>
         <td>가입일자</td>
         <td>&nbsp;${user.regDate}</td>
      </tr>      
      <tr>
         <td>수정일자</td>
         <td>&nbsp;${user.updDate}</td>
      </tr>      
   </table>
