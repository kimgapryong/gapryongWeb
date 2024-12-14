package mvc.controller;

import java.io.IOException;

import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;


import mvc.model.BoardDAO;
import mvc.model.BoardDTO;
import mvc.model.CartADAO;

import mvc.model.GameListDAO;
import mvc.model.MoneyDAO;


public class BoardController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	static final int LISTCOUNT = 5;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		System.out.println(RequestURI);
		System.out.println(contextPath);
		
		String command = RequestURI.substring(contextPath.length());
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		if(command.equals("/BoardListAction.do")) {
			requestBoardList(request);
			RequestDispatcher rd = request.getRequestDispatcher("./board/list.jsp");
			rd.forward(request, response);
		}else if(command.equals("/BoardWriteForm.do")) {
			requestLoginName(request);
			
			RequestDispatcher rd = request.getRequestDispatcher("./board/WriteForm.jsp");
			rd.forward(request, response);
		}else if(command.equals("/BoardWriteAction.do")) {
			//글쓰는 로직을 수행하는 함수생성
			requestBoardWrite(request);
			
		    RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		}else if(command.equals("/BoardViewAction.do")) {
			//글쓰는 로직을 수행하는 함수생성
			requestBoardView(request);
			
		    RequestDispatcher rd = request.getRequestDispatcher("/BoardView.do");
			rd.forward(request, response);
			
		}else if(command.equals("/BoardView.do")) {

		    RequestDispatcher rd = request.getRequestDispatcher("./board/view.jsp");
			rd.forward(request, response);
			
		}else if(command.equals("/BoardUpdateAction.do")) {
			
			requestBoardUpdate(request);
			
		    RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		}else if(command.equals("/AddCartList.do")) {
			requestAddCart(request);
			
			 RequestDispatcher rd = request.getRequestDispatcher("./step06/product.jsp");
			 rd.forward(request, response);

		}else if(command.equals("/GetMoney.do")) {
			reqeustAddMoney(request);

			// 페이지로 리디렉션
			response.sendRedirect("./step06/index.jsp");
			
		}else if(command.equals("/BuyGame.do")) {

				int money = 0;
				try {
					money = returnValue(request);
					if(money >= 0) {
						requestBuyGame(request);
						
						response.sendRedirect("./member/resultMember.jsp?msg=2");
	
					}else if(money < 0) {
						
						RequestDispatcher rd = request.getRequestDispatcher("./member/resultMember.jsp?msg=4");
						rd.forward(request, response);
					}
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		}else if(command.equals("/allRemoveCart.do")) {
			requestAllRemove();
			
			RequestDispatcher rd = request.getRequestDispatcher("./step06/cart.jsp");
			rd.forward(request, response);
			
		}else if(command.equals("/buyAll.do")) {
			int money = requestBuyAll(request);
			if(money >= 0) {
				String value = String.valueOf(money);
				SetSession(request, value);
				response.sendRedirect("./member/resultMember.jsp?msg=2");
			}else if(money < 0) {
				
				RequestDispatcher rd = request.getRequestDispatcher("./member/resultMember.jsp?msg=4");
				rd.forward(request, response);
			}
		}else if(command.equals("/removeCart.do")) {
			requestDeleteProduct(request);
			
			RequestDispatcher rd = request.getRequestDispatcher("./step06/cart.jsp");
			rd.forward(request, response);

		}else if(command.equals("/BoardListDelete.do")) {
			requestDeleteBoard(request);
			
		    RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
				rd.forward(request, response);
		}
	}
	
	public void requestBoardList(HttpServletRequest request) {// 등록된 글 목록 가져오기
		BoardDAO dao = BoardDAO.getInstance();
		List<BoardDTO> boardlist = new ArrayList<BoardDTO>(); // 다형성
		int pageNum = 1;
		int limit = LISTCOUNT; //5
		
		//페이지번호가 있으면
		if(request.getParameter("pageNum") != null) pageNum = Integer.parseInt(request.getParameter("pageNum"));
		// 정수로 변환해서 pageNum에 저장함
		boardlist = dao.getBoardList(pageNum);
		  
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("boardlist", boardlist);
		
		String items = request.getParameter("items");
		String text = request.getParameter("text");
		
		//매개변수 2개짜리의 총 갯수를 리턴
		int total_record = dao.getListCount(items, text);
		//매개변수 4개짜리
		boardlist = dao.getBoardList(pageNum, limit, items, text);
		request.setAttribute("items", items);
		request.setAttribute("text", text);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("total_record", total_record);
		request.setAttribute("boardlist", boardlist);
		
		//페이징 갯수 구하기
		int total_page;
		if(total_record % limit == 0) {
			total_page = total_record / limit;
		}else {
			total_page = (total_record / limit) + 1;
		}
		request.setAttribute("total_page", total_page);
		request.setAttribute("boardlist", boardlist);
	}
	
	// 인증된 사용자명 가져오는 함수 구현
	public void requestLoginName(HttpServletRequest request) {
		String id = request.getParameter("id");
		BoardDAO dao = BoardDAO.getInstance();
		String name = dao.getLoginNameById(id);
		request.setAttribute("name", name);
	}
	
	public void requestBoardWrite(HttpServletRequest request) {
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO board = new BoardDTO();
		board.setId(request.getParameter("id"));
		board.setName(request.getParameter("name"));
		board.setSubject(request.getParameter("title"));
		board.setContent(request.getParameter("contents"));
		
		board.setHit(0);
		board.setIp(request.getRemoteAddr());
		dao.insertBoard(board);
	}
	//글 상세 페이지 가져오기
	public void requestBoardView(HttpServletRequest request) {
		BoardDAO dao = BoardDAO.getInstance();
		int num = Integer.parseInt( request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		BoardDTO board = new BoardDTO();
		board = dao.getBoardByNum(num, pageNum);
		
		request.setAttribute("num", num);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("board", board);
	}
	
	public void insertCart(HttpServletRequest request) {
		String id = request.getParameter("id");
		CartADAO dao = CartADAO.getInstance();
		
		dao.insertGame(id);
	}
	
	public void requestBoardUpdate(HttpServletRequest request) {
		int num = Integer.parseInt(request.getParameter("num"));
		int pageNum = Integer.parseInt(request.getParameter("pageNum"));
		
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO board = new BoardDTO();
		board.setNum(num);
		board.setName(request.getParameter("name"));
		board.setSubject(request.getParameter("title"));
		board.setContent(request.getParameter("contents"));
		board.setUpdate_day(request.getParameter("update_day"));
		
		board.setIp(request.getRemoteAddr());
		dao.updateBoard(board);
	}
	
	public void requestAddCart(HttpServletRequest request) {
		String id = request.getParameter("id");
		
		CartADAO dao = CartADAO.getInstance();
		dao.insertGame(id);
	}

	
	public void reqeustAddMoney(HttpServletRequest request) {
		String id = request.getParameter("id");
		String money = request.getParameter("money");
		String coin = null;
	      
		MoneyDAO dao = MoneyDAO.getInstance();
		coin = dao.GetMoney(id, money);
		
		HttpSession session = request.getSession();
		session.setAttribute("money", coin);
	}
	
	public void requestBuyGame(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pid = request.getParameter("cartId");
	
		GameListDAO dao = GameListDAO.getInstance();
		int money = dao.GetProductValue(pid);
		String value =dao.GetListBuy(id,pid, money);
		
		HttpSession session = request.getSession();
		session.setAttribute("money", value);
	}
	public int returnValue(HttpServletRequest request) throws SQLException {
		String id = request.getParameter("id");
		String pid = request.getParameter("cartId");
		
		GameListDAO dao = GameListDAO.getInstance();
		System.out.println(dao.GetMemberValue(id) - dao.GetProductValue(pid));
		return dao.GetMemberValue(id) - dao.GetProductValue(pid);
	}
	
	public void requestAllRemove() {
		CartADAO dao = CartADAO.getInstance();
		dao.DeleteAllList();
	}
	public void requestDeleteProduct(HttpServletRequest request) {
		String id = request.getParameter("id");
		
		CartADAO dao = CartADAO.getInstance();
		dao.DeleteProduct(id);
	}
	public int requestBuyAll(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    String moneyStr = (String) session.getAttribute("money");
	    int money = 0;
	    
	    try {

	        money = Integer.parseInt(moneyStr);
	    } catch (NumberFormatException e) {
	        System.out.println("money 값이 올바르지 않습니다: " + moneyStr);
	        money = 0; 
	    }

	    CartADAO dao = CartADAO.getInstance();
	    int value = dao.BuyAllList();
	    return money - value;
	}

	public void SetSession(HttpServletRequest request, String money) {
		String id = request.getParameter("id");
		CartADAO dao = CartADAO.getInstance();
		dao.UpdateGame(id);
		HttpSession session = request.getSession();
		session.setAttribute("money", money);
	}
	
	public void requestDeleteBoard(HttpServletRequest request) {
		String num = request.getParameter("number");
		BoardDAO dao = BoardDAO.getInstance();
		dao.DeleteBoardList(num);
	}
}









