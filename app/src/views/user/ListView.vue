<template>
	<div class="container" style="margin-top: 80px">
		<h2 class="text-center" >사용자 목록</h2>
		<form class="form-inline d-flex justify-content-end" method="GET" action="#">
            <div class="form-group mx-sm-3 mb-2">
                <label for="userNm" class="sr-only">검색</label>
                <input type="text" class="form-control" id="userNm" name="userNm" value="">
            </div>
            <button type="submit" class="btn btn-light mb-2">검색</button>
        </form>
		<div>총 건수 : <span>0</span></div>
		<div class="list-group mt-3">
			
			
			<!-- 사용자 정보 이벤트 -->
	    	<a class="list-group-item list-group-item-action" href="#">
	    	    <!-- 사용자 정보 -->
	    		<span>홍길동</span>
	    		<!-- 사용자 권한 -->
	    		<span>ADMIN</span>
	    	</a>
	    	
		</div>
        <nav aria-label="Page navigation example" style="margin-top: 30px">
            <ul class="pagination justify-content-center">
                
                <!-- 전 페이지 이동 이벤트 -->
                <li class="page-item" >
                    <a class="page-link disabled" href="#">Previous</a>
                </li>
                
                <!-- 페이지 번호 이벤트 -->
                <li class="page-item" >
                  <a class="page-link" href="#">1</a>
                </li>
	            
              	<!-- 다음 페이지 이동 이벤트 -->
                <li class="page-item" >
                	<a class="page-link disabled" href="#">Next</a>
                </li>
                
            </ul>
          </nav>
	</div>
</template>
	
	
