<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/static/css/styles.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>product_view</title>
</head>
<body>
   <table id="list-table" width="500" cellpadding="0" cellspacing="0" border="1">
      <form role="form" method="post">
         <input type="hidden" name="product_id" value="${product_view.product_id}">

         <tr>
            <td> 상품이름 </td>
            <td> ${product_view.product_name} </td>
         </tr>
         <tr>
            <td> 가격 </td>
            <td> ${product_view.price} 원</td>
         </tr>

      </form>
      <div class="btn">
         <p><a class="btn btn-outline-dark btn-sm" href="/user/cart3">장바구니에 담기</a></p>
         <p><a class="btn btn-outline-dark btn-sm" href="/user/order">바로 구매하기</a></p>
      </div>

   </table>   
   <br>
   <div class="table-wrap">
      <table class="table myaccordion table-hover" id="accordion">
         <form role="form" method="post">
            <input type="hidden" name="product_id" value="${product_view.product_id}">

   
            <tr>
               <td>글번호</td>
               <td>제목</td>
               <td>작성자</td>
               <td>작성일</td>
               <td>좋아요</td>
               <td>조회</td>
            </tr>
            <c:forEach items="${list}" var="vo" varStatus="status">
               <tr data-toggle="collapse" data-target="#collapse${status.index}" aria-expanded="false" aria-controls="collapse${status.index}" class="collapsed">
                  <td>${vo.board_id}</td>
                  <td>${vo.b_title}</td>
                  <td>${vo.nickname}</td>
                  <td>${vo.b_date}</td>
                  <td>${vo.like_count}</td>
                  <td>${vo.b_hit}</td>
                  <i class="fa" aria-hidden="false"></i>
               </tr>
               <tr>
                  <td colspan="6" id="collapse${status.index}" class="collapse acc" data-parent="#accordion" aria-expanded="false">
                     <p>${vo.b_content}</p>
                  </td>
               </tr>
            </c:forEach>
            
         </form>
      </table>
   </div>

   <script src="/static/js/jquery.min.js"></script>
   <script src="/static/js/popper.js"></script>
   <script src="/static/js/bootstrap.min.js"></script>
      

</body>
</html>