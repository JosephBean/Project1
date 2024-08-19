import { createRouter, createWebHistory } from 'vue-router'
//import HomeView from '../views/board/ListView.vue'

const routes = [
  {
    path: '/',
    name: 'home',
    redirect: "/board/list"
  },
  {
    path: '/auth/login',
    name: 'login',
    component: () => import(/* webpackChunkName: "auth" */ '../views/auth/LoginView.vue')
  },
  {
    path: '/auth/sign',
    name: 'sign',
    component: () => import(/* webpackChunkName: "auth" */ '../views/auth/SignView.vue')
  },
  {
    path: '/user/list',
    name: 'userList',
    component: () => import(/* webpackChunkName: "user" */ '../views/user/ListView.vue')
  },
  {
    path: '/board/list',
    name: 'boardList',
    component: () => import(/* webpackChunkName: "board" */ '../views/board/ListView.vue')
  },
  {
    path: "/notFound",
    name: "notFound",
    component: () => import('../views/NotFound.vue')
  },
  {
    path: "/:pathMatch(.*)*",
    redirect: "/notFound"
  }
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
