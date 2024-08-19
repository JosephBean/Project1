<template>
  <nav aria-label="Page navigation example" style="margin-top: 30px">
      <ul class="pagination justify-content-center">
      
          <li class="page-item">
              <button type="button" class="page-link" @click="this.$parent.previous" :class="{disabled: 0 == pageable.pageNumber}">Previous</button>
          </li>
          
          <li class="page-item" v-for="i in pageArea" :key="i">
            <button type="button" class="page-link" @click="this.$parent.page(i)" :class="{disabled: i - 1 == pageable.pageNumber}">{{i}}</button>
          </li>
          
          <li class="page-item">
            <button type="button" class="page-link" @click="this.$parent.next" :class="{disabled: totalPages == pageable.pageNumber + 1}">Next</button>
          </li>
        
      </ul>
  </nav>
</template>

<script>
export default {
  name: 'Paging',
  props: {
    pageable: Object,
    pageArea: Array,
    totalPages: Number
  }
}
</script>
