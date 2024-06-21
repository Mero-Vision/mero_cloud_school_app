import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthenticationRepository {
  Future<Either<AppErrorHandler, LoginDTOEntity>> login({
    required String email,
    required String password,
  });
}
