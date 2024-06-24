import 'package:mero_cloud_school/core/common/exports.dart';


class TeacherDetailsModel extends TeacherDetailsEntity {
  TeacherDetailsModel({
    super.designation,
    super.joiningDate,
    super.maritalStatus,
    super.jobType,
    super.workingHour,
    super.temporaryAddress,
    super.permanentAddress,
    super.baseSalary,
    super.createdUserId,
  });
  @override
  TeacherDetailsModel copyWith({
    ValueGetter<String?>? designation,
    ValueGetter<String?>? joiningDate,
    ValueGetter<String?>? maritalStatus,
    ValueGetter<String?>? jobType,
    ValueGetter<String?>? workingHour,
    ValueGetter<String?>? temporaryAddress,
    ValueGetter<String?>? permanentAddress,
    ValueGetter<String?>? baseSalary,
    ValueGetter<int?>? createdUserId,
  }) {
    return TeacherDetailsModel(
      designation: designation != null ? designation() : this.designation,
      joiningDate: joiningDate != null ? joiningDate() : this.joiningDate,
      maritalStatus:
          maritalStatus != null ? maritalStatus() : this.maritalStatus,
      jobType: jobType != null ? jobType() : this.jobType,
      workingHour: workingHour != null ? workingHour() : this.workingHour,
      temporaryAddress:
          temporaryAddress != null ? temporaryAddress() : this.temporaryAddress,
      permanentAddress:
          permanentAddress != null ? permanentAddress() : this.permanentAddress,
      baseSalary: baseSalary != null ? baseSalary() : this.baseSalary,
      createdUserId:
          createdUserId != null ? createdUserId() : this.createdUserId,
    );
  }

  @override
  String toString() {
    return 'TeacherDetailsModel(designation: $designation, joiningDate: $joiningDate, maritalStatus: $maritalStatus, jobType: $jobType, workingHour: $workingHour, temporaryAddress: $temporaryAddress, permanentAddress: $permanentAddress, baseSalary: $baseSalary, createdUserId: $createdUserId)';
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'designation': designation,
      'joining_date': joiningDate,
      'marital_status': maritalStatus,
      'job_type': jobType,
      'working_hour': workingHour,
      'temporary_address': temporaryAddress,
      'permanent_address': permanentAddress,
      'base_salary': baseSalary,
      'created_user_id': createdUserId,
    };
  }

  factory TeacherDetailsModel.fromMap(Map<String, dynamic> map) {
    return TeacherDetailsModel(
      designation: map['designation'],
      joiningDate: map['joining_date'],
      maritalStatus: map['marital_status'],
      jobType: map['job_type'],
      workingHour: map['working_hour'],
      temporaryAddress: map['temporary_address'],
      permanentAddress: map['permanent_address'],
      baseSalary: map['base_salary'],
      createdUserId: map['created_user_id']?.toInt(),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory TeacherDetailsModel.fromJson(String source) =>
      TeacherDetailsModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TeacherDetailsEntity &&
        other.designation == designation &&
        other.joiningDate == joiningDate &&
        other.maritalStatus == maritalStatus &&
        other.jobType == jobType &&
        other.workingHour == workingHour &&
        other.temporaryAddress == temporaryAddress &&
        other.permanentAddress == permanentAddress &&
        other.baseSalary == baseSalary &&
        other.createdUserId == createdUserId;
  }

  @override
  int get hashCode {
    return designation.hashCode ^
        joiningDate.hashCode ^
        maritalStatus.hashCode ^
        jobType.hashCode ^
        workingHour.hashCode ^
        temporaryAddress.hashCode ^
        permanentAddress.hashCode ^
        baseSalary.hashCode ^
        createdUserId.hashCode;
  }
}
