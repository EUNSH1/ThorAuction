package com.goodee.finalproject.product;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.goodee.finalproject.board.notice.NoticeFileVO;
import com.goodee.finalproject.board.notice.NoticeVO;
import com.goodee.finalproject.member.MemberVO;
import com.goodee.finalproject.util.FileManager;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ProductService {

	@Autowired
	private ProductMapper productMapper;
	
	// 최근 본 상품
	public List<SaleProductVO> recentProduct(Long productId) throws Exception {
		
		return productMapper.recentProduct(productId);
	}
	
	public ProductVO getProductApproval(ProductVO productVO) throws Exception{
		
		return productMapper.getProductApproval(productVO);
	}
	
	public int setSaleProduct(SaleProductVO saleProductVO) throws Exception{
		
		return productMapper.setSaleProduct(saleProductVO);
	}
	
	public List<SaleProductVO> getSaleProductList(SaleProductVO saleProductVO) throws Exception{
		
		return productMapper.getSaleProductList(saleProductVO);
	}
	
	public List<SaleProductVO> getSaleProductHitList(SaleProductVO saleProductVO) throws Exception{
		
		return productMapper.getSaleProductHitList(saleProductVO);
	}
	
	public List<SaleProductVO> getSaleProductCategoryList(SaleProductVO saleProductVO) throws Exception{
		
		return productMapper.getSaleProductCategoryList(saleProductVO);
	}
	
	public List<CategoryVO> getCategoryList(CategoryVO categoryVO) throws Exception{
		return productMapper.getCategoryList(categoryVO);
	}
	
	public SaleProductVO getSaleProductListDetail(SaleProductVO saleproductVO) throws Exception{
		
		return productMapper.getSaleProductListDetail(saleproductVO);
	}
	
	public SaleProductVO getSaleProductListDetail2(SaleProductVO saleproductVO) throws Exception{
		
		return productMapper.getSaleProductListDetail2(saleproductVO);
	}
	
	public int setDeadLineUpdate(SaleProductVO saleProductVO) throws Exception{
		
		return productMapper.setDeadLineUpdate(saleProductVO);
	}

	public Long getMaxAmountCheck(BidAmountVO bidAmountVO) throws Exception{
		
		return productMapper.getMaxAmountCheck(bidAmountVO);
	}
	
	public int setBidAmountAdd(BidAmountVO bidAmountVO) throws Exception{
		
		return productMapper.setBidAmountAdd(bidAmountVO);
	}
	
	public List<BidAmountVO> getBidAmountUser(BidAmountVO bidAmountVO) throws Exception{
		
		return productMapper.getBidAmountUser(bidAmountVO);
	}
	
	public int setBidAmountUpdate(BidAmountVO bidAmountVO) throws Exception{
		
		return productMapper.setBidAmountUpdate(bidAmountVO);
	}
	
	public int setSaleProductHit(SaleProductVO saleProductVO) throws Exception{
		
		return productMapper.setSaleProductHit(saleProductVO);
	}
	
	public int setLikeSaleProduct(LikeSaleProductVO likeSaleProductVO) throws Exception{
		
		return productMapper.setLikeSaleProduct(likeSaleProductVO);
	}

	public String getLikeProductCheck(LikeSaleProductVO likeSaleProductVO) throws Exception{
		
		return productMapper.getLikeProductCheck(likeSaleProductVO);
	}
	
	public int setQuestionAdd(ProductQuestionVO productQuestionVO) throws Exception{
		
		return productMapper.setQuestionAdd(productQuestionVO);
	}
	
	public int setAdminQuestionAdd(AdminQuestionVO adminQuestionVO) throws Exception{
		
		return productMapper.setAdminQuestionAdd(adminQuestionVO);
	}
	
	
	public int setQuestionDelete(ProductQuestionVO productQuestionVO) throws Exception{
		
		return productMapper.setQuestionDelete(productQuestionVO);
	}
	
	public AdminQuestionVO getAdminQuestionCheck(ProductQuestionVO productQuestionVO) throws Exception{
		
		return productMapper.getAdminQuestionCheck(productQuestionVO);
	}
	
	public int setAdminQuestionDelete(AdminQuestionVO adminQuestionVO) throws Exception{
		
		return productMapper.setAdminQuestionDelete(adminQuestionVO);
	}
	
	public int setStatus(ProductVO productVO) throws Exception{
		return productMapper.setStatus(productVO);
	}
	
	public int setBidAmountSuccess(BidAmountVO bidAmountVO) throws Exception{
		
		return productMapper.setBidAmountSuccess(bidAmountVO);
	}
	
	public int setBidAmountFail(BidAmountVO bidAmountVO) throws Exception{
		
		return productMapper.setBidAmountFail(bidAmountVO);
	}
	
	
}
