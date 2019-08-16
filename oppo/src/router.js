import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import NotFound from './views/NotFound'
import Detail from './views/Detail'
Vue.use(Router)

export default new Router({
  routes: [
    {path:"/details", component:Detail},
    {path:"/", component:Index},
    {path:"*", component:NotFound}
  ]
})
