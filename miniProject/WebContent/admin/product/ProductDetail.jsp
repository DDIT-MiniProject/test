<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
 <script type="text/javascript">
 	function BtnClick(form){
 		form.action="adminProductList.do";
 		form.method='post';
 		form.submit();
 	}
  </script>
<body>
<br>


<form name="frm" method="post" enctype="multipart/form-data" action="adminProductUpdate.do">
<div class="container">
  <h2>상품 상세 정보</h2>
  <h3>Taste is King</h3>            
  <table id="list" class="table table-condensed">
    <thead>
      <tr>
        <th width="100px">상품분류</th>
        <td><select name="kind">
 
          <option><c:choose>
          <c:when test="${productVO.kind eq '12'}">스페셜오퍼</c:when>
          <c:when test="${productVO.kind eq '13'}">딜리버리팩</c:when>
          <c:when test="${productVO.kind eq '14'}">세트메뉴</c:when>
          <c:when test="${productVO.kind eq '15'}">버거</c:when>
          <c:when test="${productVO.kind eq '16'}">사이드</c:when>
          <c:when test="${productVO.kind eq '17'}">드링크</c:when>
          
          </c:choose>
          
          </option>
          
 
        </select></td>
      </tr>
    </thead>
    <tbody>
      <tr>
      <th>상품번호</th>
      <td><input type="text" class="form-control" name="pseq" value="${productVO.pseq }" readonly></td>
      <td>
      </tr>
      <tr>
        <th>상품명</th>
        <td><input type="text" class="form-control" name="name" value="${productVO.name }"readonly></td>
      </tr>
      <tr>
        <th>가격</th>
        <td><input type="text" class="form-control" name="price2" value="${productVO.price2 }"readonly></td>
      </tr>
      <tr>
        <th>상세설명</th>
        <td><textarea class="form-control" name="content"readonly>${productVO.content }</textarea></td>
      </tr>
      <tr>
    <th>상품이미지</th>
    <td>
   
      <input type="file" name="image"readonly>${product.image }
    </td>
  </tr>    
            
      </tbody>
      </table>
      
      
      <button type="button" class="btn btn-default" onclick="BtnClick(this.form)">목록</button>
      </div>
      </form>
</body>
</html>