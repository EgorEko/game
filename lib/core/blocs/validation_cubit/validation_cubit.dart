import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'validation_state.dart';

class ValidationCubit extends Cubit<ValidationState> {
  ValidationCubit() : super(const ValidationInitial('', ''));

  Future<void> validationEmail(String email) async {
    if (email.isNotEmpty && state is ValidationInitial) {
      if (email.contains('@') && email.contains('.')) {
        emit(ValidationReady(email, ''));
      }
    }
    if (email.isNotEmpty && state is ValidationReady && state.password != '') {
      if (email.contains('@') && email.contains('.')) {
        emit(ValidationSucceeded(email, state.password));
      }
    }
    if (state is ValidationSucceeded && state.password != '') {
      if (!email.contains('@') && !email.contains('.')) {
        emit(ValidationReady(email, state.password));
      }
    }
  }

  Future<void> validationPassword(String password) async {
    if (password.isNotEmpty && state is ValidationInitial) {
      if (password.length >= 6) {
        emit(ValidationReady('', password));
      }
    }
    if (password.isNotEmpty && state is ValidationReady && state.email != '') {
      if (password.length >= 6) {
        emit(ValidationSucceeded(state.email, password));
      }
    }
    if (password.length < 6 &&
        state is ValidationSucceeded &&
        state.email != '') {
      emit(ValidationReady(state.email, password));
    }
  }
}
