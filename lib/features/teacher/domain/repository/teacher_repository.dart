import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

abstract class ITeacherRepository {
  Future<Either<AppErrorHandler, List<TeacherEntity>>> getAllTeachers();
  Future<Either<AppErrorHandler, TeacherEntity>> createTeacher({
    String? name,
    String? email,
    String? mobileNo,
    String? gender,
    String? dob,
    String? designation,
    String? joiningDate,
    String? maritalStatus,
    String? jobType,
    String? workingHour,
    String? temporaryAddress,
    String? permanentAddress,
    String? baseSalary,
  });
}
