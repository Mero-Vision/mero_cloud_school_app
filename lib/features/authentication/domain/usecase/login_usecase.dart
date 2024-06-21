import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class LoginUsecase extends Usecase<LoginDTOEntity, LoginParams> {
  final IAuthenticationRepository repository;

  LoginUsecase({required this.repository});

  @override
  Future<Either<AppErrorHandler, LoginDTOEntity>> call(
      LoginParams params) async {
    return await repository.login(
      email: params.email,
      password: params.password,
    );
  }
}

class LoginParams {
  final String email;
  final String password;

  LoginParams({
    required this.email,
    required this.password,
  });
}
