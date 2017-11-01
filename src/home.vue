<template>
  <div>Home - {{greeting}}</div>
</template>

<script lang="coffee">
module.exports =
  computed:
    username: () ->
      @.$route.params.username
  methods:
    goBack: () ->
      if window.history.length > 1
        @.$router.go(-1)
      else
        @.$router.push('/')
  data: () ->
    greeting: 'Hello'
</script>
