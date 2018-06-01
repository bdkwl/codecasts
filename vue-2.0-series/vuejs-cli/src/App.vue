<template>
  <div id="app">
    <router-view :todos="todos"></router-view>
  </div>
</template>

<script>

export default {
  name: 'App',
  components: {

  },
  data() {
    return {
      todos: []
    }
  },
  mounted() {
      this.axios.get('http://www.lovueapi.com/api/todos').then((response) => {
        console.log(response.data)
        this.todos = response.data
      })
  },
  computed: {
    todoCount() {
      return this.todos.length;
    }
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
