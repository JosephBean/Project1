<template>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
		<div class="container-fluid">
			<a class="navbar-brand" href="/"><span class="log1">WOO</span><span class="log2">JUN</span></a>
			<a class="navbar-brand" href="/auth/login">
		      <img src="/images/login.png" alt="user" style="width:40px;" class="rounded-pill"> 
		    </a>
		</div>
	</nav>
  <router-view/>
</template>

<script>
export default {
    name: 'HomeView'
}
</script>