import 'package:mero_cloud_school/core/common/exports.dart';

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
    // Cubits
    locator.registerLazySingleton<AuthenticationCubit>(
      () => AuthenticationCubit(
        loginUsecase: locator(),
      ),
    );
  }
}
