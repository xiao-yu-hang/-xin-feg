<template>
  <div class="container">
  <el-menu
  :default-active="activeIndex2"
  class="el-menu-demo"
  mode="horizontal"
  @select="handleSelect"
  background-color="#545c64"
  text-color="#fff"
  active-text-color="#ffd04b">
  <el-menu-item index="1" class="e1" @click="showt">管理员注意事项</el-menu-item>
  <el-submenu index="2">
   <template slot="title">管理用户</template>
      <el-menu-item index="2-1" @click="shows">搜索用户</el-menu-item>
      <el-menu-item index="2-2" @click="showal">全部用户</el-menu-item>
  </el-submenu>
    <el-submenu index="3">
      <template slot="title">管理图片</template>
      <el-menu-item index="3-1" @click="showad">新图入库</el-menu-item>
      <el-menu-item index="3-2" @click="showd">旧图淘汰</el-menu-item>
      <el-menu-item index="3-4" @click="showl">查看仓库</el-menu-item>
    </el-submenu>
    <el-menu-item index="4">更多功能...</el-menu-item>
  </el-menu>
  <div>
  <div class="text">
    <my-text></my-text>
  </div>
  <div class="search in">
    <usersearch></usersearch>
    <userinfo></userinfo>
  </div>
  <div class="alluser in">
    <alluser></alluser>
  </div>
  <div class="addpic in">
    <addpic></addpic>
  </div>
  <div class="detepic in">
    <detepic></detepic>
  </div>
  <div class="lookpic in">
    <lookpic></lookpic>
  </div>
  </div>
</div>
</template>
<style scoped>

.out{
  display: block;
}
.in{
  display:none;
}
</style>>
<script>
  export default {
    data() {
      return {
        activeIndex: '1',
        activeIndex2: '1'
      };
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      },
      showt(){
        $(".text").show().siblings().hide();
      },
      shows(){
        $(".search").show().siblings().hide();
      },
      showal(){
        $(".alluser").show().siblings().hide();
      },
      showad(){
        $(".addpic").show().siblings().hide();
      },
      showd(){
        $(".detepic").show().siblings().hide();
      },
      showl(){
        $(".lookpic").show().siblings().hide();
      },
    }
  };
  
  // import {drawer} from "../assets/js/drawer.js"
</script>