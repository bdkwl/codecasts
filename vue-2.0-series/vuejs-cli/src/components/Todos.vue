<template>
    <div id="todos">
        <ul class="list-group" v-if="todos.length > 0">
            <!-- v-for 循环数组数据 -->
            <li class="list-group-item" v-for="(todo,index) in todos" v-bind:class="{ 'completed' : todo.completed }">
                <router-link :to="{name: 'todo', params:{id : todo.id}}">{{todo.title}}</router-link>
                <!-- v-on:click 点击事件 -->
                <button class="btn btn-warning btn-xs pull-right" v-on:click="deleteTodo(index, todo)">Delete</button>
                <button class="btn btn-xs pull-right mr-10" v-on:click="toggleCompletion(todo)"
                        v-bind:class="[todo.completed ? 'btn-danger' : 'btn-success']">{{ todo.completed ? 'undo' :
                    'completed' }}
                </button>
            </li>
        </ul>
        <todo-form :todos="todos"></todo-form>
    </div>
</template>

<script>
    import TodoForm from './TodoForm'

    export default {
        name: 'todos',
        props: ['todos'],

        methods: {
            deleteTodo(index, todo) {
                // 删除todo数据
                this.axios.delete('http://www.lovueapi.com/api/todo/'+ todo.id +'/delete').then(response=>{
                    console.log(response.data);
                    this.todos.splice(index, 1)
                });
            },
            toggleCompletion(todo) {
                // 修改todo completed状态
                //todo.completed = !todo.completed
                this.axios.patch('http://www.lovueapi.com/api/todo/'+ todo.id +'/completed').then(response=>{
                    console.log(response.data);
                    todo.completed = !todo.completed;
                });
            }
        },
        components: {
            TodoForm
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
