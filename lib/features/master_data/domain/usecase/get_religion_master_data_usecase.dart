import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class GetReligionMasterDataUsecase extends Usecase<MasterDataEntity, void> {
  final IMasterDataRepository repository;

  GetReligionMasterDataUsecase({
    required this.repository,
  });

  @override
  Future<Either<AppErrorHandler, MasterDataEntity>> call(void params) async {
    return await repository.getReligions();
  }
}
