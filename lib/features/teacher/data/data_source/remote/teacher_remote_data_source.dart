import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class TeacherRemoteDataSource {
  final Api api;

  TeacherRemoteDataSource({
    required this.api,
  });

  Future<Either<AppErrorHandler, TeacherModel>> createTeacher({
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
    final FormData formData = FormData.fromMap({
      'name': name,
      'email': email,
      'mobile_no': mobileNo,
      'gender': gender,
      'date_of_birth': dob,
      'designation': designation,
      'joining_date': joiningDate,
      'marital_status': maritalStatus,
      'job_type': jobType,
      'working_hour': workingHour,
      'temporary_address': temporaryAddress,
      'permanent_address': permanentAddress,
      'base_salary': baseSalary,
    });
    try {
      final response = await api.sendRequest.post(
        ApiEndpoints.teachersURL,
        data: formData,
      );
      if (response.statusCode != 200) {
        return Left(
          AppErrorHandler(
            message: response.data['message'],
          ),
        );
      } else {
        return Right(
          TeacherModel.fromMap(
            response.data['data'],
          ),
        );
      }
    } catch (e) {
      return Left(
        AppErrorHandler(
          message: e.toString(),
        ),
      );
    }
  }

  Future<Either<AppErrorHandler, List<TeacherModel>>> getAllTeachers() async {
    try {
      final response = await api.sendRequest.get(ApiEndpoints.teachersURL);
      if (response.statusCode != 200) {
        return Left(
          AppErrorHandler(
            message: response.data['message'],
          ),
        );
      } else {
        return Right(
          TeacherModel.fromListMap(
            response.data['data'],
          ),
        );
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
