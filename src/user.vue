<template>
  <div class="user">
    <div>User - {{ id }}</div>
    <router-view></router-view>
  </div>
</template>

<script lang="coffee">
module.exports =
  props: ['id']
  beforeRouteUpdate: (to, from, next) ->
    # Notifying param change, as User will be reused
    # e.g., user/1 to user/2
    console.log to # user/2
    console.log from # user/1
    next() # necessary
</script>
