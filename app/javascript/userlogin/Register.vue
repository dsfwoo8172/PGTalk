<template>
<div class="w-full h-screen flex items-center justify-center flex-col">
    <div>
      <img src="../../../public/user_default.png" alt="" class="rounded-full">
    </div>
   <form class="w-full lg:w-2/5 mx-auto h-1/2 flex justify-center items-center flex-col" autocomplete="off">
    <div class="border-b-2 border-solid border-gray-200 w-4/5 h-10 mb-5">
      <input
        type="text"
        placeholder="Nickname"
        class="w-full h-full focus:outline-none"
        autocomplete="off"
        ref="userNickName"
      >
    </div>
    <div class="border-b-2 border-solid border-gray-200 w-4/5 h-10 mb-5">
      <input
        type="text"
        placeholder="Email"
        class="w-full h-full focus:outline-none"
        autocomplete="off"
        ref="userEmail"
      >
    </div>
    <div class="border-b-2 border-solid border-gray-200 w-4/5 h-10">
      <input
        type="password"
        placeholder="Password"
        class="w-full h-full focus:outline-none"
        autocomplete="new-password"
        ref="userPwd"
      >
    </div>
    <div class="w-4/5 h-10">
      <button class="focus:outline-none w-full h-full my-5 border border-solid border-indigo-400 bg-indigo-400 text-white rounded">Register</button>
    </div>
    <router-link
      class="w-4/5 text-center border border-solid border-blue-400 rounded mt-10 py-2 text-md text-blue-400 hover:bg-blue-400 hover:text-white"
      to="/login"
    >Login</router-link>
      
  </form>
</div>

</template>

<script>
export default {
  data() {
    return {
      form: new FormData()
    }
  },
  methods: {
    submit() {
      const nickName = this.$refs.userNickName.value
      const userEmail = this.$refs.userEmail.value
      const userPwd = this.$refs.userPwd.value
      this.form.append('nick_name', nickName)
      this.form.append('user_email', userEmail)
      this.form.append('user_pwd', userPwd)
    }
  }
}
</script>

<style scoped>

</style>