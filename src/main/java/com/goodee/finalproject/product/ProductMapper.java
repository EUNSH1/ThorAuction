package com.goodee.finalproject.product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.finalproject.member.MemberVO;

@Mapper
public interface ProductMapper {
	
	// 최근 본 상품
	public List<SaleProductVO> recentProduct(Long productId) throws Exception;

	public int setProductAdd(ProductVO productVO) throws Exception;
	
	public int setProductFileAdd(ProductFileVO productFileVO) throws Exception;
	
	public int setSummerFileDelete(ProductFileVO productFileVO) throws Exception;

	public ProductFileVO getFileNumCheck(ProductFileVO productFileVO) throws Exception;
	
	public int setFileNumCheckDelete(ProductFileVO productFileVO) throws Exception;
	
	public int setProductUpdate(ProductVO productVO) throws Exception;
	
	public int setProductFileUpdate(ProductFileVO productFileVO) throws Exception;

	public int setFileDeleteSort(ProductFileVO productFileVO) throws Exception;

	public int setProductDelete(ProductVO productVO) throws Exception;
	
	public int setFileDelete(ProductFileVO productFileVO) throws Exception;

	public ProductVO getProductNumCheck(ProductVO productVO) throws Exception;

	// 상품 승인 구현 메퍼
	public ProductVO getProductApproval(ProductVO productVO) throws Exception;
	
	// 상품 게시
	public int setSaleProduct(SaleProductVO saleProductVO) throws Exception;
	
	// 상품리스트
	public List<SaleProductVO> getSaleProductList(SaleProductVO saleProductVO) throws Exception;
	
	public List<SaleProductVO> getSaleProductHitList(SaleProductVO saleProductVO) throws Exception;
	
	public List<SaleProductVO> getSaleProductCategoryList(SaleProductVO saleProductVO) throws Exception;
	
	// 카테고리리스트
	public List<CategoryVO> getCategoryList(CategoryVO categoryVO) throws Exception;

	public SaleProductVO getSaleProductListDetail(SaleProductVO saleProductVO) throws Exception;
	
	public SaleProductVO getSaleProductListDetail2(SaleProductVO saleProductVO) throws Exception;

	// 온라인상품이 마감일이 지났을때 마감정보 1로 변경
	public int setDeadLineUpdate(SaleProductVO saleProductVO) throws Exception;

	public Long getMaxAmountCheck(BidAmountVO bidAmountVO) throws Exception;

	// 입찰금액 추가
	public int setBidAmountAdd(BidAmountVO bidAmountVO) throws Exception;
	
	public int setSaleProductHit(SaleProductVO saleProductVO) throws Exception;
	 
	public int setLikeSaleProduct(LikeSaleProductVO likeSaleProductVO) throws Exception;
	
	public String getLikeProductCheck(LikeSaleProductVO likeSaleProductVO) throws Exception;
	
	//입찰금액 같은 유저는 업데이트
	public List<BidAmountVO> getBidAmountUser(BidAmountVO bidAmountVO) throws Exception;
	
	public int setBidAmountUpdate(BidAmountVO bidAmountVO) throws Exception;
	
	// 상품 문의 관리
	public int setQuestionAdd(ProductQuestionVO productQuestionVO) throws Exception;
	
	public int setAdminQuestionAdd(AdminQuestionVO adminQuestionVO) throws Exception;

	public int setQuestionDelete(ProductQuestionVO productQuestionVO) throws Exception;
	
	public AdminQuestionVO getAdminQuestionCheck(ProductQuestionVO productQuestionVO) throws Exception;
	
	public int setAdminQuestionDelete(AdminQuestionVO adminQuestionVO) throws Exception;
	
	public int setStatus(ProductVO productVO) throws Exception;

	// 회원 포인트 관리
	public int setBidAmountSuccess(BidAmountVO bidAmountVO) throws Exception;
	
	public int setBidAmountFail(BidAmountVO bidAmountVO) throws Exception;
}
