import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/todo.dart';
import 'cloud_firestore.dart';
import 'auth_provider.dart';

final todosProvider = StreamProvider<List<Todo>>((ref) {
  final firestore = ref.watch(firestoreProvider);
  final userAsyncValue = ref.watch(userProvider);

  return userAsyncValue.when(
    data: (user) {
      if (user == null) return Stream.value([]);

      return firestore
          .collection('todos')
          .doc(user.uid)
          .collection('tasks')
          .snapshots()
          .map((snapshot) => snapshot.docs
              .map((doc) => Todo.fromMap(doc.id, doc.data()))
              .toList());
    },
    loading: () => Stream.value([]),
    error: (_, __) => Stream.value([]),
  );
});
