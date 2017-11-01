# https://medium.com/frontend-fun/vuejs-routing-with-vue-router-1548f94c0575

import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

Home =
  template: '<div>Home</div>'
About =
  template: '<div>About</div>'

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
