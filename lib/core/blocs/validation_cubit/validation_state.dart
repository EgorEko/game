part of 'validation_cubit.dart';

abstract class ValidationState extends Equatable {
  final String? email;
  final String? password;
  const ValidationState(this.email, this.password);
}

class ValidationInitial extends ValidationState {
  const ValidationInitial(super.email, super.password);

  @override
  List<Object> get props => [];
}

class ValidationReady extends ValidationState {
  const ValidationReady(super.email, super.password);
  @override
  List<Object?> get props => [email, password];
}

class ValidationSucceeded extends ValidationState {
  const ValidationSucceeded(super.email, super.password);
  @override
  List<Object?> get props => [email, password];
}

class ValidationFailed extends ValidationState {
  final String validationError;

  const ValidationFailed(this.validationError) : super('', '');

  @override
  List<Object> get props => [validationError];
}
