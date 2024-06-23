import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class MasterDataLocalDataSource {
  final MasterDataHiveService hiveService;

  MasterDataLocalDataSource({
    required this.hiveService,
  });

  Future<Either<AppErrorHandler, MasterDataModel>> getReligions() async {
    try {
      final data = await hiveService.getReligionMasterData();
      final model = MasterDataModel(data: data.data);
      return Right(model);
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<AppErrorHandler, MasterDataModel>> getJobTypes() async {
    try {
      final data = await hiveService.getJobTypesMasterData();
      final model = MasterDataModel(data: data.data);
      return Right(model);
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<AppErrorHandler, MasterDataModel>> getMaritalStatus() async {
    try {
      final data = await hiveService.getMaritalStatusMasterData();
      final model = MasterDataModel(data: data.data);
      return Right(model);
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<AppErrorHandler, MasterDataModel>> getDesignations() async {
    try {
      final data = await hiveService.getDesignationMasterData();
      final model = MasterDataModel(data: data.data);
      return Right(model);
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<AppErrorHandler, MasterDataModel>> getGenders() async {
    try {
      final data = await hiveService.getGenderMasterData();
      final model = MasterDataModel(data: data.data);
      return Right(model);
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<AppErrorHandler, MasterDataModel>> addReligions(
      MasterDataModel masterData) async {
    try {
      await hiveService
          .addReligionMasterData(MasterDataHiveModel(data: masterData.data));
      return Right(masterData);
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<AppErrorHandler, MasterDataModel>> addJobTypes(
      MasterDataModel masterData) async {
    try {
      await hiveService
          .addJobTypesMasterData(MasterDataHiveModel(data: masterData.data));
      return Right(masterData);
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<AppErrorHandler, MasterDataModel>> addMaritalStatus(
      MasterDataModel masterData) async {
    try {
      await hiveService.addMaritalStatusMasterData(
          MasterDataHiveModel(data: masterData.data));
      return Right(masterData);
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<AppErrorHandler, MasterDataModel>> addDesignations(
      MasterDataModel masterData) async {
    try {
      await hiveService
          .addDesignationMasterData(MasterDataHiveModel(data: masterData.data));
      return Right(masterData);
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<AppErrorHandler, MasterDataModel>> addGenders(
      MasterDataModel masterData) async {
    try {
      await hiveService
          .addGenderMasterData(MasterDataHiveModel(data: masterData.data));
      return Right(masterData);
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }
}
