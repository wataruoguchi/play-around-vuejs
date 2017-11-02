# https://medium.com/frontend-fun/vuejs-routing-with-vue-router-1548f94c0575

import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from './home.vue'
import About from './about.vue'
import User from './user.vue'
import Nav from './nav.vue'

UserProfile =
  template: "<div>Profile</div>"
UserPosts =
  template: "<div>Post # {{ post_id }}</div>"
  props: ['post_id']
NotFoundComponent =
  template: "<div>Not found</div>"

Vue.use(VueRouter)

# Path matching engine: path-to-regexp
# https://github.com/pillarjs/path-to-regexp#parameters
routes = [
    {
      path: '/' # http://localhost:8080/routing.html#/
      alias: '/index.html'
      components:
        nav: Nav
        default: Home
    }
    {
      path: '/home'
      redirect: '/'
    }
    {
      path: '/about' # http://localhost:8080/routing.html#/about
      components:
        nav: Nav # Maybe this is a bad example. We don't want to repeat this every time
        default: About
    }
    {
      path: '/user'
      redirect: '/user/1'
    }
    {
      path: '/user/:id' # http://localhost:8080/routing.html#/user/2
      components: { default: User }
      props: { default: true }
      children: [
          {
            path: 'profile'
            component: UserProfile
          }
          {
            path: 'posts/:post_id'
            name: 'user_posts'
            component: UserPosts
            props: true
          }
        ]
    }
    {
      path: '*'
      component: NotFoundComponent
    }
  ]

router = new VueRouter
  routes: routes

app = new Vue
  router: router
.$mount('#app')
