import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class TeacherRepositoryImpl implements ITeacherRepository {
  final TeacherRemoteDataSource remoteDataSource;

  TeacherRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<AppErrorHandler, List<TeacherEntity>>> getAllTeachers() async {
    return await remoteDataSource.getAllTeachers();
  }

  @override
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
  }) async {
    return await remoteDataSource.createTeacher(
      name: name,
      email: email,
      mobileNo: mobileNo,
      gender: gender,
      dob: dob,
      designation: designation,
      joiningDate: joiningDate,
      maritalStatus: maritalStatus,
      jobType: jobType,
      workingHour: workingHour,
      temporaryAddress: temporaryAddress,
      permanentAddress: permanentAddress,
      baseSalary: baseSalary,
    );
  }
}
