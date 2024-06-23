import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class MasterDataRemoteDataSource {
  final Api api;

  MasterDataRemoteDataSource({
    required this.api,
  });

  Future<Either<AppErrorHandler, MasterDataModel>> getReligions() async {
    try {
      final response =
          await api.sendRequest.get(ApiEndpoints.religionsMasterDataURL);
      if (response.statusCode == 200) {
        final data = MasterDataModel.fromJson(response.data['data']);
        return Right(data);
      } else {
        return Left(AppErrorHandler(
          message: response.data['message'],
        ));
      }
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
      final response =
          await api.sendRequest.get(ApiEndpoints.jobTypesMasterDataURL);
      if (response.statusCode == 200) {
        final data = MasterDataModel.fromJson(response.data['data']);
        return Right(data);
      } else {
        return Left(AppErrorHandler(
          message: response.data['message'],
        ));
      }
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
      final response =
          await api.sendRequest.get(ApiEndpoints.maritalStatusMasterDataURL);
      if (response.statusCode == 200) {
        final data = MasterDataModel.fromJson(response.data['data']);
        return Right(data);
      } else {
        return Left(AppErrorHandler(
          message: response.data['message'],
        ));
      }
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
      final response =
          await api.sendRequest.get(ApiEndpoints.designationsMasterDataURL);
      if (response.statusCode == 200) {
        final data = MasterDataModel.fromJson(response.data['data']);
        return Right(data);
      } else {
        return Left(AppErrorHandler(
          message: response.data['message'],
        ));
      }
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
      final response =
          await api.sendRequest.get(ApiEndpoints.gendersMasterDataURL);
      if (response.statusCode == 200) {
        final data = MasterDataModel.fromJson(response.data['data']);
        return Right(data);
      } else {
        return Left(AppErrorHandler(
          message: response.data['message'],
        ));
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
