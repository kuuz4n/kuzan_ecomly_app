import 'package:kevin_ecomly/core/usecase/usecase.dart';
import 'package:kevin_ecomly/core/utils/typedefs.dart';
import 'package:kevin_ecomly/src/auth/domain/repositories/auth_repository.dart';

class ForgotPassword extends UsecaseWithParams<void, String> {
  const ForgotPassword(this._repository);

  final AuthRepository _repository;

  @override
  ResultFuture<void> call(String params) => _repository.forgotPassword(params);
}
