import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class LoginUsecase extends Usecase<LoginDTOEntity, LoginParams> {
  final IAuthenticationRepository repository;
  final SettingsHiveService settingsHiveService;

  LoginUsecase({
    required this.repository,
    required this.settingsHiveService,
  });

  @override
  Future<Either<AppErrorHandler, LoginDTOEntity>> call(
    LoginParams params,
  ) async {
    final result = await repository.login(
      email: params.email,
      password: params.password,
    );

    return result.fold(
      (error) => Left(error),
      (data) async {
        final settings = await settingsHiveService.getSettings();
        await settingsHiveService.updateSettings(
          settings.copyWith(
            loginDTO: () => data.toHiveModel(),
          ),
        );
        return Right(data);
      },
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
