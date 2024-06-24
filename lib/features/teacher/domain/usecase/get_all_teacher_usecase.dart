import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class GetAllTeacherUsecase extends Usecase<List<TeacherEntity>, void> {
  final ITeacherRepository repository;

  GetAllTeacherUsecase({
    required this.repository,
  });

  @override
  Future<Either<AppErrorHandler, List<TeacherEntity>>> call(void params) async {
    return await repository.getAllTeachers();
  }
}
