<!-- 도서 목록 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>

    <%@include file="../include/manager/head.jsp"  %>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
       
       <%@include file="../include/manager/left_column.jsp"  %>
       
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
       <%@include file="../include/manager/header.jsp"  %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">열람실 목록</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                           <th>목록 준비중</th>
                                           <th>목록 준비중</th>
                                           <th>목록 준비중</th>
                                           <th>목록 준비중</th>
                                           <th>목록 준비중</th>
                                           <th>목록 준비중</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                           <th>목록 준비중</th>
                                           <th>목록 준비중</th>
                                           <th>목록 준비중</th>
                                           <th>목록 준비중</th>
                                           <th>목록 준비중</th>
                                           <th>목록 준비중</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<tr>
									        <th>${book.book_name} 내용 준비중</th>
									        <th>${book.introduction} 내용 준비중</th>
									        <th>${book.published_date} 내용 준비중</th>
									        <th>${book.author} 내용 준비중</th>
									        <th>${book.image} 내용 준비중</th>
									        <th>${book.etc} 내용 준비중</th>
									    </tr>
									    
                                        <c:forEach var="book" items="${list}">
									    <tr>
									        <th>${book.book_name} 내용 준비중</th>
									        <th>${book.introduction} 내용 준비중</th>
									        <th>${book.published_date} 내용 준비중</th>
									        <th>${book.author} 내용 준비중</th>
									        <th>${book.image} 내용 준비중</th>
									        <th>${book.etc} 내용 준비중</th>
									    </tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->
                    

            </div>                   
              <!-- End of Main Content -->

          
            <!-- Footer -->
		<%@include file="../include/manager/footer.jsp"  %>
            
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        
    	<%@include file="../include/manager/logout_modal.jsp"  %>

    </div>


    <%@include file="../include/manager/plugin.jsp"  %>

</body>

</html>