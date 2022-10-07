<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@page import="ch04.vo.BookVO"%>
<%@page import="ch04.dao.BookRepository"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	//폼 페이지에서 입력된 데이터를 서버(톰켓)로 전송 시 한글이 깨지지 않도록 하쟈
	request.setCharacterEncoding("UTF-8");

	String path = "D:\\A_TeachingMaterial\\6.JspSpring\\workspace\\JSPBook\\WebContent\\resources\\images";

	DiskFileUpload upload = new DiskFileUpload();
	
	upload.setSizeMax(1000000); 
	upload.setSizeThreshold(4096); 
	upload.setRepositoryPath(path);
	
	List items = upload.parseRequest(request);
	
	Iterator params = items.iterator();
	
	String bookId = "";
	String name = "";
	String unitPrice = "";
	String description = "";
	String author = "";
	String publisher = "";
	String category = "";
	String unitsInStock = "";
	String totalPages = "";
	String condition = "";

	int price = 0;
	long stock = 0;
	long pages = 0;
	String fileName = "";
	
	BookRepository dao = BookRepository.getInstance();
	
	while(params.hasNext()){
		FileItem item = (FileItem)params.next();
		if(item.isFormField()){
			if(item.getFieldName().equals("bookId")){
				bookId = item.getString("UTF-8");
			}else if(item.getFieldName().equals("name")){
				name = item.getString("UTF-8");
			}else if(item.getFieldName().equals("unitPrice")){
				unitPrice = item.getString("UTF-8");
				
				if(unitPrice.isEmpty()){
					price = 0;
				}else{
					price = Integer.parseInt(unitPrice);
				}
			}else if(item.getFieldName().equals("description")){
				description = item.getString("UTF-8");
			}else if(item.getFieldName().equals("author")){
				author = item.getString("UTF-8");
			}else if(item.getFieldName().equals("publisher")){
				publisher = item.getString("UTF-8");
			}else if(item.getFieldName().equals("category")){
				category = item.getString("UTF-8");
			}else if(item.getFieldName().equals("unitsInStock")){
				unitsInStock = item.getString("UTF-8");
				
				if(unitsInStock.isEmpty()){
					stock = 0;
				}else{
					stock = Long.parseLong(unitsInStock);
				}
			}else if(item.getFieldName().equals("totalPages")){
				totalPages = item.getString("UTF-8");
				
				if(totalPages.isEmpty()){
					pages = 0;
				}else{
					pages = Long.parseLong(totalPages);
				}
			}else if(item.getFieldName().equals("condition")){
				condition = item.getString("UTF-8");
			}
		}else{
			String fileFieldName = item.getFieldName(); //요청 파라미터명 
			fileName = item.getName(); //저장 파일명
			String contentType = item.getContentType(); //images/jpeg
			
			//순수한 파일명만 추출
			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
			long fileSize = item.getSize(); //파일크기
			//파일 객체 생성(copy 설계)
			File file = new File(path + "/" + fileName);
			//copy 실행
			item.write(file);
			
		}
	}

	//빈(Bean) 객체에 데이터를 태워서 add하쟈
	BookVO bookVO = new BookVO();
	bookVO.setBookId(bookId);
	bookVO.setName(name);
	bookVO.setUnitPrice(price);
	bookVO.setDescription(description);
	bookVO.setAuthor(author);
	bookVO.setPublisher(publisher);
	bookVO.setCategory(category);
	bookVO.setUnitsInStock(stock);
	bookVO.setTotalPages(pages);
	bookVO.setCondition(condition);
	bookVO.setFilename(fileName);
	
	dao.addBook(bookVO);
	
// 	out.print("bookVO : " + bookVO.toString());
	
	response.sendRedirect("books.jsp");

%>