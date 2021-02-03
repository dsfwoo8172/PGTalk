<template>
<div class="w-full h-screen flex items-center justify-center flex-col">
  <img src="../../../public/pg_logo.jpg" alt="" class="w-24 rounded-full">
  <span class="text-blue-700 text-2xl font-bold">PGTalk</span>
   <form class="w-full lg:w-2/5 mx-auto h-1/2 flex justify-center items-center flex-col">
    <div class="border-b-2 border-solid border-gray-200 w-4/5 mb-5">
      <input type="text" name="" id="" placeholder="Email" class="w-full focus:outline-none">
    </div>
    <div class="border-b-2 border-solid border-gray-200 w-4/5">
      <input type="text" name="" id="" placeholder="Password" class="w-full focus:outline-none">
    </div>
    <div class="w-4/5">
      <button class="w-full border border-solid border-gray-200 rounded bg-gray-300 mt-7 py-2 text-md text-white">Login</button>
      <button class="w-full border border-solid border-blue-400 rounded mt-4 py-2 text-md text-blue-400 hover:bg-blue-400 hover:text-white">Register</button>
    </div>
    <a href="#" class="text-xs text-gray-400 mt-5">Forgot password</a>
  </form>
</div>

</template>

<script>
export default {
  data() {
    return {
      message: 'success'
    }
  }
}
</script>

<style scoped>

</style>