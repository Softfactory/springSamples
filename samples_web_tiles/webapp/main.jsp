<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/common/include/directives.jsp"%>

<center>

   <br><br>
   <h3><font color="blue">홈 페이지에 오신것을 환영합니다.</font></h3>
   <br>

   <font color="red">
      <spring:message code="${MESSAGE_CODE}" arguments="${MESSAGE_PARAMS}"/>
   </font>

   <br/><br/><br/>
   IE에서 언어 변경하는 방법<br/>
   인터넷 옵션 &gt; 일반(탭), 언어 &gt; 언어 추가 후, 최상위로 이동

</center>

<%--
   com.company.core.util.WebAttrAnalyzer.analyze(request);
--%> 