import Vue from 'vue/dist/vue.esm'
import Login from '../userlogin/Login.vue'

document.addEventListener('DOMContentLoaded', () => {
  new Vue({
    el: '#login',
    components: { Login }
  })
})


