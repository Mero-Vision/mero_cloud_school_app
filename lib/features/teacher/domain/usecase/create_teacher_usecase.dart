import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class CreateTeacherUsecase extends Usecase<TeacherEntity, CreateTeacherParams> {
  final ITeacherRepository repository;

  CreateTeacherUsecase({
    required this.repository,
  });

  @override
  Future<Either<AppErrorHandler, TeacherEntity>> call(
      CreateTeacherParams params) async {
    return await repository.createTeacher(
      name: params.name,
      email: params.email,
      mobileNo: params.mobileNo,
      gender: params.gender,
      dob: params.dob,
      designation: params.designation,
      joiningDate: params.joiningDate,
      maritalStatus: params.maritalStatus,
      jobType: params.jobType,
      workingHour: params.workingHour,
      temporaryAddress: params.temporaryAddress,
      permanentAddress: params.permanentAddress,
      baseSalary: params.baseSalary,
    );
  }
}

class CreateTeacherParams {
  final String? name;
  final String? email;
  final String? mobileNo;
  final String? gender;
  final String? dob;
  final String? designation;
  final String? joiningDate;
  final String? maritalStatus;
  final String? jobType;
  final String? workingHour;
  final String? temporaryAddress;
  final String? permanentAddress;
  final String? baseSalary;

  CreateTeacherParams({
    this.name,
    this.email,
    this.mobileNo,
    this.gender,
    this.dob,
    this.designation,
    this.joiningDate,
    this.maritalStatus,
    this.jobType,
    this.workingHour,
    this.temporaryAddress,
    this.permanentAddress,
    this.baseSalary,
  });
}
