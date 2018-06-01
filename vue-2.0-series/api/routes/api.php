<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

/* todos list */
Route::middleware('api')->get('/todos', function() {
    /*return response()->json([
        ['id' => 1, 'title' => 'Learn Vue js', 'completed' => false],
        ['id' => 2, 'title' => 'Go to shop', 'completed' => false]
    ]);*/
    $todos = App\Todo::all();
    return $todos;
});

/* todo detail */
Route::middleware('api')->get('/todo/{id}', function($id) {
    /*return response()->json([
        ['id' => 1, 'title' => 'Learn Vue js', 'completed' => false],
        ['id' => 2, 'title' => 'Go to shop', 'completed' => false]
    ]);*/
    $todo = App\Todo::find($id);
    return $todo;
});

/* create todo */
Route::middleware('api')->post('/todo/create', function(Request $request) {
    $data = ['title' => $request->get('title'), 'completed' => 0];
    $todo = App\Todo::create($data);
    return $todo;
});

/* update todo completed */
Route::middleware('api')->patch('/todo/{id}/completed', function($id) {
    $todo = App\Todo::find($id);
    $todo->completed = !$todo->completed;
    $todo->save();
    return $todo;
});

/* delete todo */
Route::middleware('api')->delete('/todo/{id}/delete', function($id) {
    $todo = App\Todo::find($id);
    $todo->delete();
    return response()->json(['deleted']);
});