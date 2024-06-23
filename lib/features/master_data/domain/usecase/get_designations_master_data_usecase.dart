import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class GetDesignationMasterDataUsecase extends Usecase<MasterDataEntity, void> {
  final IMasterDataRepository repository;

  GetDesignationMasterDataUsecase({
    required this.repository,
  });

  @override
  Future<Either<AppErrorHandler, MasterDataEntity>> call(void params) async {
    return await repository.getDesignations();
  }
}
