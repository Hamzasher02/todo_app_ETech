import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_app/providers/auth_provider.dart';

class SignupState {
  final bool isLoading;
  final String? error;

  SignupState({this.isLoading = false, this.error});

  SignupState copyWith({bool? isLoading, String? error}) {
    return SignupState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class SignupNotifier extends StateNotifier<SignupState> {
  final FirebaseAuth _auth;

  SignupNotifier(this._auth) : super(SignupState());

  Future<void> signUp(String email, String password) async {
    state = state.copyWith(isLoading: true);
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      state = state.copyWith(isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}

final signupProvider =
    StateNotifierProvider<SignupNotifier, SignupState>((ref) {
  final auth = ref.watch(authProvider);
  return SignupNotifier(auth);
});
