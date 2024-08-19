<template>
	<div class="container" style="margin-top: 80px">
		<h2 class="text-center">회원가입</h2>
		
		<form action="/sign" method="post">
			<div class="mb-3 mt-3">
			<label for="userNm" class="form-label">사용자 이름:</label>
			<input type="text" class="form-control" id="userNm" placeholder="이름을 작성해주세요" name="userNm" required>
			</div>
			<div class="mb-3">
			<label for="userPwd" class="form-label">사용자 비밀번호:</label>
			<input type="password" class="form-control" id="userPwd" placeholder="비밀번호를 작성해주세요" name="userPwd" required>
			</div>
			<button type="submit" class="btn btn-primary">가입</button>
			<a class="btn btn-danger" href="/auth/login">취소</a>
		</form>
		
	</div>
</template>