<template>
	<div class="container" style="margin-top: 80px">

		<h2 class="text-center" >게시판 목록</h2>
		<form class="form-inline d-flex justify-content-end" @submit.prevent="search">
            <div class="form-group mx-sm-3 mb-2">
                <label for="title" class="sr-only">검색</label>
                <input type="text" class="form-control" id="title" name="title" v-model="title">
            </div>
            <button type="submit" class="btn btn-light mb-2">검색</button>
        </form>
        
		<div>총 건수 : <span>{{ res.totalElements }}</span></div>
		<a href="#" class="btn btn-success">글작성</a>
		
		<div class="list-group mt-3">
		
	    	<a class="list-group-item list-group-item-action" href="#" v-for="board in res.content" :key="board.boardNo">
	    		<span>{{ board.title }} : {{ board.user.userNm }}</span> 
	    	</a>
	    	
		</div>

        <PagingView :pageable="pageable" :totalPages="totalPages" :pageArea="pageArea" />

	</div>
</template>

<script>
import axios from 'axios';
import PagingView from '@/components/PagingView.vue'

export default {
    name: 'boardList',
    components: {PagingView},
    props: {},
    data() { return {res : {}, pageArea : [], pageNumber: 0, totalPages: 0, title: '', pageable: {}} },
    methods: {
        previous() {
            let params = {
                page: this.res.pageable.pageNumber-1,
                title: this.title
            }
            this.getData({params});
        },
        page(data) {
            let params = {
                page: data-1,
                title: this.title
            }
            this.getData({params});
        },
        next() {
            let params = {
                page: this.res.pageable.pageNumber+1,
                title: this.title
            }
            this.getData({params});
        },
        eventView(res) {
            if(res.status == 200) {
                this.res = res.data;
                this.pageable = res.data.pageable;
                this.pageNumber = res.data.pageable.pageNumber;
                this.totalPages = res.data.totalPages;
                let end = Math.min(this.totalPages, this.pageNumber + 3);
                let start = Math.max(1, end - (3 - 1))
                this.pageArea = [];
                for(let i = start; i <= end; i++) {
                    this.pageArea[this.pageArea.length] = i;
                }
            }
        },
        search() {
            let params = {
                page: 0,
                title: this.title
            }
            this.getData({params});
        },
        getData(data) {
            const API_URL = process.env.VUE_APP_API_URL + "board/";
            if(data == undefined) {
                axios.post( API_URL ).then(this.eventView);
            } else {
                axios.post( API_URL, null, data ).then(this.eventView);
            }
        }
    },
    setup() {},
    created() {
        this.getData();
    },
    mounted() {},
    unmounted() {}
}

</script>