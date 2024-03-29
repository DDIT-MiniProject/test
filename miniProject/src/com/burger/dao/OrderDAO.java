package com.burger.dao;

import java.sql.SQLException;
import java.util.ArrayList;

import com.burger.dto.CartVO;
import com.burger.dto.OrderVO;

public interface OrderDAO {


	// 사용자가 주문
	public int insertOrder(ArrayList<CartVO> cartList, String id) throws SQLException;

	public void insertOrderDetail(CartVO cartVO, int maxOseq) throws SQLException;
	
	// 사용자가 주문 내역 검색
	public ArrayList<OrderVO> listOrderById(String id, String result, int oseq) throws SQLException;

	// 현재 진행 중인 주문 내역만 조회
	public ArrayList<Integer> selectSeqOrderIng(String id) throws SQLException;
	
	//전체 주문 내역 조회
	public ArrayList<Integer> selectSeqOrderTotal(String id) throws SQLException;
	
	
	/* *
	 * 관리자 모드에서 사용되는 메소드 * *
	 */
	public int totalOrderRecord(String mname) throws SQLException;
	public ArrayList<OrderVO> listOrder(int tpage,String member_name) throws SQLException;
	
	public void updateOrderResult(String oseq) throws SQLException;
	
	public int newOrderSearch() throws SQLException;
	
	public String pageNumber(int tpage, String name) throws SQLException;
	public ArrayList<OrderVO> epistasisList() throws SQLException;
}
