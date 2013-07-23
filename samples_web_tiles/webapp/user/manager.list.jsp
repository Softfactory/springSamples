<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/include/directives.jsp"%>

   <br>
   <table border="0" width="600" cellspacing="0">
      <tr>
         <th colspan="6">
            <center><b>운영자 목록</b></center>
         </th>
      </tr>
      <tr>
         <th width="100">아이디</th>
         <th width="100">이름</th>
         <th width="120">Email</th>
         <th width="100">타입</th>
         <th width="80">활성화</th>
         <th width="100">등록일자</th>
      </tr>
      <c:forEach items="${managerList}" var="manager">
      <tr>
         <td align="center">${manager.id}</td>
         <td align="center">${manager.name}</td>
         <td align="center">${manager.email}</td>
         <td align="center">${manager.role}</td>
         <td align="center">${manager.enabled}</td>
         <td align="center">${manager.regDate}</td>
      </tr>
      </c:forEach>
   </table>
