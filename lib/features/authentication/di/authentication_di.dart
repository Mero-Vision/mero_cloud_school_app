import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:mero_cloud_school/features/authentication/domain/usecase/logout_usecase.dart';

class AuthenticationDI {
  void register() {
    // Data Sources
    locator.registerFactory<AuthenticationRemoteDataSource>(
      () => AuthenticationRemoteDataSource(
        api: locator(),
      ),
    );
    // Repositories
    locator.registerFactory<IAuthenticationRepository>(
      () => AuthenticationRepositoryImpl(
        remoteDataSource: locator(),
      ),
    );
    // Usecases
    locator.registerFactory<LoginUsecase>(
      () => LoginUsecase(
        repository: locator(),
        settingsHiveService: locator(),
      ),
    );
    locator.registerFactory<LogoutUsecase>(
      () => LogoutUsecase(
        settingsHiveService: locator(),
      ),
    );
    // Cubits
    locator.registerLazySingleton<AuthenticationCubit>(
      () => AuthenticationCubit(
        loginUsecase: locator(),
        logoutUsecase: locator(),
      ),
    );
  }
}
