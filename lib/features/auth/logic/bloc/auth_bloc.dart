import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      try {
        emit(LoginLoading());
        final credential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
        emit(LoginSuccess());
      } catch (e) {
        print(e);
        emit(LoginError());
      }
    });

    on<RegisterEvent>((event, emit) async {
      try {
        emit(RegisterLoading());
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
              email: event.email,
              password: event.password,
            );
        emit(RegisterSuccess());
      } catch (e) {
        print(e);
        emit(RegisterError());
      }
    });
  }
}
