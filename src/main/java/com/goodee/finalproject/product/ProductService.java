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
import com.goodee.finalproject.util.FileManager;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ProductService {

	@Autowired
	private ProductMapper productMapper;
	
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
	
	public List<CategoryVO> getCategoryList(CategoryVO categoryVO) throws Exception{
		return productMapper.getCategoryList(categoryVO);
	}
	
	public SaleProductVO getSaleProductListDetail(SaleProductVO saleproductVO) throws Exception{
		
		return productMapper.getSaleProductListDetail(saleproductVO);
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
	
	public int setSaleProductHit(SaleProductVO saleProductVO) throws Exception{
		
		return productMapper.setSaleProductHit(saleProductVO);
	}
}
