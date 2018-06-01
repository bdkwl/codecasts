<template>
    <!-- v-on:submit 表单提交 -->
    <form v-on:submit.prevent="addTodo(newTodo)">
        <div class="form-group">
            <input type="text" class="form-control" placeholder="Add a new todo" v-model="newTodo.title">
        </div>
        <div class="form-group">
            <button class="btn btn-success" type="submit">Add Todo</button>
        </div>
    </form>
</template>

<script>
    export default {
        props: ['todos'],
        data() {
            return {
                newTodo: {id: null, title: '', completed: false}
            }
        },
        methods: {
            addTodo(newTodo) {
                //this.todos.push(newTodo)
                this.axios.post('http://www.lovueapi.com/api/todo/create', {title: this.newTodo.title}).then(response => {
                    console.log(response.data);
                    this.todos.push(response.data);
                });
                this.newTodo = {id: null, title: '', completed: false}
            }
        }
    }
</script>

<style scoped>

</style>
