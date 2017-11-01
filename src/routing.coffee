# https://medium.com/frontend-fun/vuejs-routing-with-vue-router-1548f94c0575

import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from './home.vue'
import About from './about.vue'

Vue.use(VueRouter)

routes = [
    {
      path: '/'
      component: Home
    }
    {
      path: '/home'
      redirect: '/'
    }
    {
      path: '/about'
      component: About
    }
  ]

router = new VueRouter
  routes: routes

app = new Vue(router: router).$mount('#app')
