import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from "axios"
import Vuex from "vuex"
Vue.use(Vuex)
//配置请求基础路径
axios.defaults.baseURL="http://127.0.0.1:8080"
//配置请求时保存session信息
axios.defaults.withCredentials=true
//地址栏必须是http://127.0.0.1:8080/不可以用http://localhost 会报错
//注册
Vue.prototype.axios=axios

//组件引入
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
Vue.use(ElementUI)
import {Carousel, CarouselItem} from 'element-ui'
Vue.use(Carousel)
Vue.use(CarouselItem)

//自定义组件
import header from "./components/header"
import hot from "./components/hot"
import picture from "./components/picture"
import foot from "./components/foot"
import pictures from "./components/pictures"
import usersearch from "./components/userSearch"
import back from "./components/back"
import userinfo from "./components/userinfo"
import alluser from "./components/alluser"
import lookpic from "./components/lookpic"
import addpic from "./components/addpic"
import detepic from "./components/detepic"
import text from "./components/text"

Vue.config.productionTip = false
Vue.component("my-header",header)
Vue.component("my-hot",hot)
Vue.component("my-picture",picture)
Vue.component("my-pictures",pictures)
Vue.component("my-foot",foot)
Vue.component("usersearch",usersearch)
Vue.component("back",back)
Vue.component("userinfo",userinfo)
Vue.component("alluser",alluser)
Vue.component("my-text",text)
Vue.component("detepic",detepic)
Vue.component("addpic",addpic)
Vue.component("lookpic",lookpic)

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
