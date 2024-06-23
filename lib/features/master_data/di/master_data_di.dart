import 'package:mero_cloud_school/core/common/exports.dart';

class MasterDataDI {
  void register() {
    // Data Sources
    locator.registerFactory<MasterDataRemoteDataSource>(
      () => MasterDataRemoteDataSource(
        api: locator(),
      ),
    );
    locator.registerFactory<MasterDataLocalDataSource>(
      () => MasterDataLocalDataSource(
        hiveService: locator(),
      ),
    );
    // Repositories
    locator.registerFactory<IMasterDataRepository>(
      () => MasterDataRepositoryImpl(
        remoteDataSource: locator(),
        localDataSource: locator(),
      ),
    );
    // Usecases
    locator.registerFactory<GetGenderMasterDataUsecase>(
      () => GetGenderMasterDataUsecase(
        repository: locator(),
      ),
    );
    locator.registerFactory<GetMaritalStatusMasterDataUsecase>(
      () => GetMaritalStatusMasterDataUsecase(
        repository: locator(),
      ),
    );
    locator.registerFactory<GetDesignationMasterDataUsecase>(
      () => GetDesignationMasterDataUsecase(
        repository: locator(),
      ),
    );
    locator.registerFactory<GetReligionMasterDataUsecase>(
      () => GetReligionMasterDataUsecase(
        repository: locator(),
      ),
    );
    locator.registerFactory<GetJobTypeMasterDataUsecase>(
      () => GetJobTypeMasterDataUsecase(
        repository: locator(),
      ),
    );
    // Cubits
    locator.registerLazySingleton<MasterDataCubit>(
      () => MasterDataCubit(
        getMaritalStatusMasterDataUsecase: locator(),
        getGenderMasterDataUsecase: locator(),
        getJobTypeMasterDataUsecase: locator(),
        getReligionMasterDataUsecase: locator(),
        getDesignationMasterDataUsecase: locator(),
      ),
    );
  }
}
