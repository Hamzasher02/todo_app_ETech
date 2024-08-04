import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Controller/todo_controller.dart';
import '../models/todo.dart';
import '../providers/auth_provider.dart';

// Provider for TaskService
final taskServiceProvider = Provider<TaskService>((ref) {
  return TaskService(ref);
});

class TaskService {
  final ref;

  TaskService(this.ref);

  Future<void> addTask(String title, String description) async {
    final userAsyncValue = ref.watch(userProvider);
    final user = userAsyncValue.data?.value;
    if (user == null) return;

    final todosController = TodoController();
    await todosController.addTodo(
      Todo(
        id: DateTime.now().toString(),
        title: title,
        description: description,
        isCompleted: false,
      ),
      user.uid,
    );
  }

  Future<void> updateTask(Todo todo, String title, String description) async {
    final userAsyncValue = ref.watch(userProvider);
    final user = userAsyncValue.data?.value;
    if (user == null) return;

    final todosController = TodoController();
    await todosController.updateTodo(
      todo.copyWith(
        title: title,
        description: description,
      ),
      user.uid,
    );
  }

  Future<void> deleteTask(String taskId) async {
    final userAsyncValue = ref.watch(userProvider);
    final user = userAsyncValue.data?.value;
    if (user == null) return;

    final todosController = TodoController();
    await todosController.deleteTodo(taskId, user.uid);
  }
}
