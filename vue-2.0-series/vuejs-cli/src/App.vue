<template>
  <div id="app">
    <todos v-bind:todos="todos"></todos>
    <todo-form v-bind:todos="todos"></todo-form>
  </div>
</template>

<script>
import Todos from './components/Todos'
import TodoForm from './components/TodoForm'

export default {
  name: 'App',
  components: {
    Todos, TodoForm
  },
  data() {
    return {
      todos: [
        {id:1, title:'Learn Vuejs', completed:true}
      ]
    }
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
