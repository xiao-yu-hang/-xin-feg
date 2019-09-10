import Vue from 'vue'
import Router from 'vue-router'
import header from "./components/header.vue"
import detail from './views/detail.vue'
import hot from "./components/hot.vue"
import picture from "./components/picture.vue"
import foot from "./components/foot.vue"
import search from "./views/search.vue"
import admin from "./views/admin.vue"
import userinfo from "./components/userinfo.vue"
import alluser from "./components/alluser.vue"
import addpic from "./components/addpic.vue"
import detepic from "./components/detepic.vue"
import lookpic from "./components/lookpic.vue"
import text from "./components/text.vue"
Vue.use(Router)
export default new Router({
  routes: [
    {path:"/header",component:header},
    {path:"/detail",component:detail},
    {path:"/hot",component:hot},
    {path:"/picture",component:picture},
    {path:"/foot",component:foot},
    {path:"/search",component:search},
    {path:"/userinfo",component:userinfo},
    {path:"/alluser",component:alluser},
    {path:"/addpic",component:addpic},
    {path:"/detepic",component:detepic},
    {path:"/lookpic",component:lookpic},
    {path:"/text",component:text},
    {path:"/admin",component:admin},
  ]
})
