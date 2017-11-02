<template>
<div>
  <h1>VueJs Router</h1>
  <p>
    <router-link to="/">Go to Home</router-link> //
    <router-link to="/about">Go to About</router-link>
    <button @click="jumpToUserPage">Go to User 2's post 1 page</button>
  </p>
</div>
</template>

<script lang="coffee">
module.exports =
  methods:
    jumpToUserPage: () ->
      # @.$router.push path: "/user/2/posts/1"
      @.$router.push name: 'user_posts', params: { id: 2, post_id:1 }
</script>
