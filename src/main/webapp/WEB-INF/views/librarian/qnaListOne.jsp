<!-- 도서 목록 페이지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<c:set var="contextPath" value="${contextPath}"/>

<!DOCTYPE html>
<html lang="en">

	<style>
	.button-container {
			display: flex;
			flex-direction: column;
			gap: 10px; /* 버튼 사이의 여백 조절 */
		}
	</style>

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

                    <!-- Page Heading -->
                    <h1 class="h3 mb-1 text-gray-800">Q&A 질문 상세 보기</h1>
                    <p class="mb-4">
                    	${question.writer }님 Q&A 질문 세부 사항
                    </p>

                    <div class="col-lg-6">

                            <!-- Circle Buttons -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">제목</h6>
                                </div>
                                <div class="card-body">
                                    <p>${question.title }</p>
                                </div>
                            </div>

                            <!-- Brand Buttons -->
                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">작성자</h6>
                                </div>
                                <div class="card-body">
                                    <p>${question.writer }</p>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-6">

                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">질문 내용</h6>
                                </div>
                                <div class="card-body">
                                    <p>${question.content }</p>
                                       
                                    <div class="my-2"></div>
                                </div>
                            </div>
                        </div>
                         <div class="my-2"></div>
                           <a href="javascript:void(0)" class="btn btn-info btn-icon-split"
                           	onClick="javascript:goForm()">
                               <span class="icon text-white-50">
                                   <i class="fas fa-info-circle"></i>
                               </span>
                               <span class="text">답변하기</span>
                           </a>
                           <div class="my-2"></div>
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
    
    <script>

// script에서 contextpath를 가져오기
sessionStorage.setItem("contextpath", "${pageContext.request.contextPath}");

// a태그를 사용해서 post로 보내고 각각 데이터를 추가해서 보내는 function(수락)
function goForm() {
    let contextPath = sessionStorage.getItem("contextpath");
    let url = contextPath + "/librarianQnaAnswer";
    
    let question_numValue = "${question.question_num }"; // 질문 번호 입력 필드의 값 가져오기
    let contentValue = "${question.content }"; // 질문 내용 필드의 값 가져오기
    
    let f = document.createElement('form');
    f.setAttribute('method', 'get');
    f.setAttribute('action', url);
    
    //  question_num 데이터를 포함하는 hidden input 추가
    let question_numInput = document.createElement('input');
    question_numInput.setAttribute('type', 'hidden');
    question_numInput.setAttribute('name', 'question_num');
    question_numInput.setAttribute('value', question_numValue);
    f.appendChild(question_numInput);
    
    //  content 데이터를 포함하는 hidden input 추가
    let contentInput = document.createElement('input');
    contentInput.setAttribute('type', 'hidden');
    contentInput.setAttribute('name', 'content');
    contentInput.setAttribute('value', contentValue);
    f.appendChild(contentInput);
    
    document.body.appendChild(f);
    f.submit();
}


</script>

</body>

</html>