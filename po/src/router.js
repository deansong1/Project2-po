import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index'
import NotFound from './views/NotFound'
import Detail from './views/Detail'
import Login from './views/Login'
import Carousel from './components/Carousel'
import Reg from './views/Reg'
Vue.use(Router)

export default new Router({
  routes: [
    {path:"/regs",component:Reg},
    {path:"/carousel",component:Carousel},
    {path:"/logins",component:Login},
    {path:"/details", component:Detail},
    {path:"/", component:Index},
    {path:"*", component:NotFound}
  ]
})
