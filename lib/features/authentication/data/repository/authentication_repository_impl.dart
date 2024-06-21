import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRepositoryImpl implements IAuthenticationRepository {
  final AuthenticationRemoteDataSource remoteDataSource;

  AuthenticationRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<AppErrorHandler, LoginDTOEntity>> login(
      {required String email, required String password}) async {
    return await remoteDataSource.login(email: email, password: password);
  }
}
