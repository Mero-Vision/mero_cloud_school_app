import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class GetJobTypeMasterDataUsecase extends Usecase<MasterDataEntity, void> {
  final IMasterDataRepository repository;

  GetJobTypeMasterDataUsecase({
    required this.repository,
  });

  @override
  Future<Either<AppErrorHandler, MasterDataEntity>> call(void params) async {
    return await repository.getJobTypes();
  }
}
