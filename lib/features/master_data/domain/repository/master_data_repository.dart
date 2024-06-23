import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

abstract class IMasterDataRepository {
  Future<Either<AppErrorHandler, MasterDataEntity>> getReligions();

  Future<Either<AppErrorHandler, MasterDataEntity>> getJobTypes();

  Future<Either<AppErrorHandler, MasterDataEntity>> getMaritalStatus();

  Future<Either<AppErrorHandler, MasterDataEntity>> getDesignations();

  Future<Either<AppErrorHandler, MasterDataEntity>> getGenders();
}
