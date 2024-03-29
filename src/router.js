import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import NotFound from './views/NotFound'

Vue.use(Router)

export default new Router({
  routes: [
    {path:"/", component:Index},
    {path:"*", component:NotFound}
  ]
})
