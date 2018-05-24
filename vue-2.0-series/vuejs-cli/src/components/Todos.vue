<template>
  <ul class="list-group">
    <!-- v-for 循环数组数据 -->
    <li class="list-group-item" v-for="(todo,index) in todos" v-bind:class="{ 'completed' : todo.completed }">
      {{todo.title}}
      <!-- v-on:click 点击事件 -->
      <button class="btn btn-warning btn-xs pull-right" v-on:click="deleteTodo(index)">Delete</button>
      <button class="btn btn-xs pull-right mr-10" v-on:click="toggleCompletion(todo)"
              v-bind:class="[todo.completed ? 'btn-danger' : 'btn-success']">{{ todo.completed ? 'undo' : 'completed' }}
      </button>
    </li>
  </ul>
</template>

<script>
  export default {
    props: ['todos'],

    methods: {
      deleteTodo(index) {
        this.todos.splice(index, 1)
      },
      toggleCompletion(todo) {
        todo.completed = !todo.completed
      }
    }
  }
</script>

<style scoped>
  .completed {
    color: #5cb85c;
    text-decoration: line-through;
  }

  .mr-10 {
    margin-right: 10px;
  }
</style>
