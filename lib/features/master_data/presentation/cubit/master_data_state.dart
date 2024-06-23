import 'package:mero_cloud_school/core/common/exports.dart';

class MasterDataState {
  final bool isLoading;
  final bool isSuccess;
  final AppErrorHandler? error;

  final MasterDataEntity? gendersMasterData;
  final MasterDataEntity? religionsMasterData;
  final MasterDataEntity? maritalStatusMasterData;
  final MasterDataEntity? jobTypesMasterData;
  final MasterDataEntity? designationsMasterData;

  MasterDataState({
    required this.isLoading,
    required this.isSuccess,
    this.error,
    this.gendersMasterData,
    this.religionsMasterData,
    this.maritalStatusMasterData,
    this.jobTypesMasterData,
    this.designationsMasterData,
  });

  factory MasterDataState.initial() {
    return MasterDataState(
      isLoading: false,
      isSuccess: false,
    );
  }

  MasterDataState copyWith({
    bool? isLoading,
    bool? isSuccess,
    ValueGetter<AppErrorHandler?>? error,
    ValueGetter<MasterDataEntity?>? gendersMasterData,
    ValueGetter<MasterDataEntity?>? religionsMasterData,
    ValueGetter<MasterDataEntity?>? maritalStatusMasterData,
    ValueGetter<MasterDataEntity?>? jobTypesMasterData,
    ValueGetter<MasterDataEntity?>? designationsMasterData,
  }) {
    return MasterDataState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      error: error != null ? error() : this.error,
      gendersMasterData: gendersMasterData != null
          ? gendersMasterData()
          : this.gendersMasterData,
      religionsMasterData: religionsMasterData != null
          ? religionsMasterData()
          : this.religionsMasterData,
      maritalStatusMasterData: maritalStatusMasterData != null
          ? maritalStatusMasterData()
          : this.maritalStatusMasterData,
      jobTypesMasterData: jobTypesMasterData != null
          ? jobTypesMasterData()
          : this.jobTypesMasterData,
      designationsMasterData: designationsMasterData != null
          ? designationsMasterData()
          : this.designationsMasterData,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'is_loading': isLoading,
      'is_success': isSuccess,
      'error': error?.toMap(),
      'genders_master_data': gendersMasterData?.toMap(),
      'religions_master_data': religionsMasterData?.toMap(),
      'marital_status_master_data': maritalStatusMasterData?.toMap(),
      'job_types_master_data': jobTypesMasterData?.toMap(),
      'designations_master_data': designationsMasterData?.toMap(),
    };
  }

  factory MasterDataState.fromMap(Map<String, dynamic> map) {
    return MasterDataState(
      isLoading: map['is_loading'] ?? false,
      isSuccess: map['is_success'] ?? false,
      error:
          map['error'] != null ? AppErrorHandler.fromMap(map['error']) : null,
      gendersMasterData: map['genders_master_data'] != null
          ? MasterDataEntity.fromMap(map['genders_master_data'])
          : null,
      religionsMasterData: map['religions_master_data'] != null
          ? MasterDataEntity.fromMap(map['religions_master_data'])
          : null,
      maritalStatusMasterData: map['marital_status_master_data'] != null
          ? MasterDataEntity.fromMap(map['marital_status_master_data'])
          : null,
      jobTypesMasterData: map['job_types_master_data'] != null
          ? MasterDataEntity.fromMap(map['job_types_master_data'])
          : null,
      designationsMasterData: map['designations_master_data'] != null
          ? MasterDataEntity.fromMap(map['designations_master_data'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory MasterDataState.fromJson(String source) =>
      MasterDataState.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MasterDataState(isLoading: $isLoading, isSuccess: $isSuccess, error: $error, gendersMasterData: $gendersMasterData, religionsMasterData: $religionsMasterData, maritalStatusMasterData: $maritalStatusMasterData, jobTypesMasterData: $jobTypesMasterData, designationsMasterData: $designationsMasterData)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MasterDataState &&
        other.isLoading == isLoading &&
        other.isSuccess == isSuccess &&
        other.error == error &&
        other.gendersMasterData == gendersMasterData &&
        other.religionsMasterData == religionsMasterData &&
        other.maritalStatusMasterData == maritalStatusMasterData &&
        other.jobTypesMasterData == jobTypesMasterData &&
        other.designationsMasterData == designationsMasterData;
  }

  @override
  int get hashCode {
    return isLoading.hashCode ^
        isSuccess.hashCode ^
        error.hashCode ^
        gendersMasterData.hashCode ^
        religionsMasterData.hashCode ^
        maritalStatusMasterData.hashCode ^
        jobTypesMasterData.hashCode ^
        designationsMasterData.hashCode;
  }
}
