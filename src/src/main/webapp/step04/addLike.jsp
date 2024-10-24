<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>  
<%@ page import="dao.ProductRepository" %> 
<%
//상품의 id를 전송받아 저장하고 전송된 아이디가 없을 떄 index.jsp로 이동
String id = request.getParameter("id");
if(id == null || id.trim().equals("")){
	response.sendRedirect("index.jsp");
	return;
}
// 상품 데이터 싱글톤 객체 얻어오기
ProductRepository dao = ProductRepository.GetInstance();
// 상품 아이디를 이용해서 상품객체를 얻어오기
Product product = dao.getProductById(id);
//상품객체가 없으면 예외처리 페이지로 이동
if(product == null){
	response.sendRedirect("exceptionNoProductId.jsp");
}
//상품 목록을 얻오도록 getAllProducts() 호출하고 리스트로 저장
ArrayList<Product> gameList = dao.getAllProducts();
Product games = new Product();
for(int i =0; i < gameList.size(); i++){
	games = gameList.get(i);
	if(games.getProductId().equals(id)){
		break;
	}
}
// 세션 속성이름 cartlist(장바구니)의 세션 정보 (장바구니에 등록된 데이터)를 얻어와 리스트 객체에 저장
ArrayList<Product> list = (ArrayList<Product>)session.getAttribute("cartlist");
if(list == null){
	list = new ArrayList<Product>();
	session.setAttribute("cartlist", list);
}
//cnt변수 생성
int cnt = 0;
Product gameQnt = new Product();
for(int i =0; i < list.size(); i++){
	gameQnt = list.get(i);
	if(gameQnt.getProductId().equals(id)){
		cnt++;
		int orderQuantity = gameQnt.getQuantity() + 1;
		gameQnt.setQuantity(orderQuantity);
	}
	
}
if(cnt == 0){
	games.setQuantity(1);
	list.add(games); // 장바구니 리스트에 새로운 제품을 추가
}
response.sendRedirect("product.jsp?id="+id);
%> 
