import Vue from 'vue'
import App from './App.vue'
import router from './router'
//import axios from './backend/vue-axios/axios';
import store from './store'

Vue.config.productionTip = false

new Vue({
  router,
  //components: { App },
  //axios,
  store,
  render: h => h(App)
}).$mount('#app')
