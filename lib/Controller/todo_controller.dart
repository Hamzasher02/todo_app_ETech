import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/todo.dart';

class TodoController {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<List<Todo>> getTodos(String userId) {
    return _firestore
        .collection('todos')
        .doc(userId)
        .collection('tasks')
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((doc) => Todo.fromMap(doc.id, doc.data()))
            .toList());
  }

  Future<void> addTodo(Todo todo, String userId) async {
    await _firestore
        .collection('todos')
        .doc(userId)
        .collection('tasks')
        .doc(todo.id)
        .set(todo.toMap());
  }

  Future<void> updateTodo(Todo todo, String userId) async {
    await _firestore
        .collection('todos')
        .doc(userId)
        .collection('tasks')
        .doc(todo.id)
        .update(todo.toMap());
  }

  Future<void> deleteTodo(String todoId, String userId) async {
    await _firestore
        .collection('todos')
        .doc(userId)
        .collection('tasks')
        .doc(todoId)
        .delete();
  }
}
