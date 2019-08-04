import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
//全局组件 header footer
import Header from './components/Header'
import Footer from './components/Footer'

Vue.component("header1",Header);
Vue.component("footer1",Footer);


Vue.prototype.axios=axios;
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
