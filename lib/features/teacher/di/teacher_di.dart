import 'package:mero_cloud_school/core/common/exports.dart';

class TeachersDI {
  void register() {
    // Data Sources
    locator.registerFactory<TeacherRemoteDataSource>(
      () => TeacherRemoteDataSource(
        api: locator(),
      ),
    );

    // Repositories
    locator.registerFactory<ITeacherRepository>(
      () => TeacherRepositoryImpl(
        remoteDataSource: locator(),
      ),
    );
    // Usecases
    locator.registerFactory<GetAllTeacherUsecase>(
      () => GetAllTeacherUsecase(
        repository: locator(),
      ),
    );
    locator.registerFactory<CreateTeacherUsecase>(
      () => CreateTeacherUsecase(
        repository: locator(),
      ),
    );

    // Cubits
    locator.registerLazySingleton<TeacherCubit>(
      () => TeacherCubit(
        getAllTeacherUsecase: locator(),
        createTeacherUsecase: locator(),
      ),
    );
  }
}
