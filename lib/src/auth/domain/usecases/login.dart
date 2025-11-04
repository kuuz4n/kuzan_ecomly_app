import 'package:equatable/equatable.dart';
import 'package:kevin_ecomly/core/common/entities/user.dart';
import 'package:kevin_ecomly/core/usecase/usecase.dart';
import 'package:kevin_ecomly/core/utils/typedefs.dart';
import 'package:kevin_ecomly/src/auth/domain/repositories/auth_repository.dart';

class Login extends UsecaseWithParams<User, LoginParams> {
  const Login(this._repository);

  final AuthRepository _repository;

  @override
  ResultFuture<User> call(LoginParams params) =>
      _repository.login(email: params.email, password: params.password);
}

class LoginParams extends Equatable {
  const LoginParams({required this.email, required this.password});

  const LoginParams.empty() : email = "test", password = "test";

  final String email;
  final String password;

  @override
  List<Object?> get props => [email, password];
}
