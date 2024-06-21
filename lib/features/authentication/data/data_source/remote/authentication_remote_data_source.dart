import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class AuthenticationRemoteDataSource {
  final Api api;

  AuthenticationRemoteDataSource({
    required this.api,
  });

  Future<Either<AppErrorHandler, LoginDTOModel>> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await api.sendRequest.post(
        ApiEndpoints.loginURL,
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 200) {
        final loginResponse = LoginDTOModel.fromMap(response.data);
        return Right(loginResponse);
      } else {
        return Left(
          AppErrorHandler(
            message: response.statusMessage ?? 'Something went wrong',
          ),
        );
      }
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }
}
