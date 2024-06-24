import 'package:mero_cloud_school/core/common/exports.dart';



class TeacherState {
  final bool isLoading;
  final bool isSuccess;
  final AppErrorHandler? error;

  final List<TeacherEntity> allTeachers;

  TeacherState({
    required this.isLoading,
    required this.isSuccess,
    this.error,
    required this.allTeachers,
  });

  factory TeacherState.initial() {
    return TeacherState(
      isLoading: false,
      isSuccess: false,
      error: null,
      allTeachers: const [],
    );
  }

  TeacherState copyWith({
    bool? isLoading,
    bool? isSuccess,
    ValueGetter<AppErrorHandler?>? error,
    List<TeacherEntity>? allTeachers,
  }) {
    return TeacherState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      error: error != null ? error() : this.error,
      allTeachers: allTeachers ?? this.allTeachers,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'is_loading': isLoading,
      'is_success': isSuccess,
      'error': error?.toMap(),
      'all_teachers': allTeachers.map((x) => x.toMap()).toList(),
    };
  }

  factory TeacherState.fromMap(Map<String, dynamic> map) {
    return TeacherState(
      isLoading: map['is_loading'] ?? false,
      isSuccess: map['is_success'] ?? false,
      error:
          map['error'] != null ? AppErrorHandler.fromMap(map['error']) : null,
      allTeachers: List<TeacherEntity>.from(
          map['all_teachers']?.map((x) => TeacherEntity.fromMap(x)) ??
              const []),
    );
  }

  String toJson() => json.encode(toMap());

  factory TeacherState.fromJson(String source) =>
      TeacherState.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TeacherState(isLoading: $isLoading, isSuccess: $isSuccess, error: $error, allTeachers: $allTeachers)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TeacherState &&
        other.isLoading == isLoading &&
        other.isSuccess == isSuccess &&
        other.error == error &&
        listEquals(other.allTeachers, allTeachers);
  }

  @override
  int get hashCode {
    return isLoading.hashCode ^
        isSuccess.hashCode ^
        error.hashCode ^
        allTeachers.hashCode;
  }
}
