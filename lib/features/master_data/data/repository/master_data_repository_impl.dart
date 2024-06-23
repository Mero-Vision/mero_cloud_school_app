import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class MasterDataRepositoryImpl implements IMasterDataRepository {
  final MasterDataLocalDataSource localDataSource;
  final MasterDataRemoteDataSource remoteDataSource;

  MasterDataRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });
  @override
  Future<Either<AppErrorHandler, MasterDataModel>> getReligions() async {
    final bool connection = await ConnectivityCheck.connectivity() &&
        await ConnectivityCheck.isServerUp();
    if (connection) {
      final data = await remoteDataSource.getReligions();
      return data.fold((l) => Left(l), (r) {
        localDataSource.addReligions(r);
        return Right(r);
      });
    } else {
      return await localDataSource.getReligions();
    }
  }

  @override
  Future<Either<AppErrorHandler, MasterDataModel>> getJobTypes() async {
    final bool connection = await ConnectivityCheck.connectivity() &&
        await ConnectivityCheck.isServerUp();
    if (connection) {
      return await remoteDataSource.getJobTypes();
    } else {
      return await localDataSource.getJobTypes();
    }
  }

  @override
  Future<Either<AppErrorHandler, MasterDataModel>> getMaritalStatus() async {
    final bool connection = await ConnectivityCheck.connectivity() &&
        await ConnectivityCheck.isServerUp();
    if (connection) {
      return await remoteDataSource.getMaritalStatus();
    } else {
      return await localDataSource.getMaritalStatus();
    }
  }

  @override
  Future<Either<AppErrorHandler, MasterDataModel>> getDesignations() async {
    final bool connection = await ConnectivityCheck.connectivity() &&
        await ConnectivityCheck.isServerUp();
    if (connection) {
      return await remoteDataSource.getDesignations();
    } else {
      return await localDataSource.getDesignations();
    }
  }

  @override
  Future<Either<AppErrorHandler, MasterDataModel>> getGenders() async {
    final bool connection = await ConnectivityCheck.connectivity() &&
        await ConnectivityCheck.isServerUp();
    if (connection) {
      return await remoteDataSource.getGenders();
    } else {
      return await localDataSource.getGenders();
    }
  }
}
