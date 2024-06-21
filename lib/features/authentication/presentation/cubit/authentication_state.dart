import 'package:mero_cloud_school/core/common/exports.dart';

class AuthenticationState {
  final bool isLoading;
  final bool isSuccess;
  final AppErrorHandler? error;

  final LoginDTOEntity? loginDTOEntity;
  AuthenticationState({
    required this.isLoading,
    required this.isSuccess,
    this.error,
    this.loginDTOEntity,
  });

  factory AuthenticationState.initial() {
    return AuthenticationState(
      isLoading: false,
      isSuccess: false,
    );
  }

  AuthenticationState copyWith({
    bool? isLoading,
    bool? isSuccess,
    ValueGetter<AppErrorHandler?>? error,
    ValueGetter<LoginDTOEntity?>? loginDTOEntity,
  }) {
    return AuthenticationState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
      error: error != null ? error() : this.error,
      loginDTOEntity:
          loginDTOEntity != null ? loginDTOEntity() : this.loginDTOEntity,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'is_loading': isLoading,
      'is_success': isSuccess,
      'error': error?.toMap(),
      'login_d_t_o_entity': loginDTOEntity?.toMap(),
    };
  }

  factory AuthenticationState.fromMap(Map<String, dynamic> map) {
    return AuthenticationState(
      isLoading: map['is_loading'] ?? false,
      isSuccess: map['is_success'] ?? false,
      error:
          map['error'] != null ? AppErrorHandler.fromMap(map['error']) : null,
      loginDTOEntity: map['login_d_t_o_entity'] != null
          ? LoginDTOEntity.fromMap(map['login_d_t_o_entity'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthenticationState.fromJson(String source) =>
      AuthenticationState.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AuthenticationState(isLoading: $isLoading, isSuccess: $isSuccess, error: $error, loginDTOEntity: $loginDTOEntity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthenticationState &&
        other.isLoading == isLoading &&
        other.isSuccess == isSuccess &&
        other.error == error &&
        other.loginDTOEntity == loginDTOEntity;
  }

  @override
  int get hashCode {
    return isLoading.hashCode ^
        isSuccess.hashCode ^
        error.hashCode ^
        loginDTOEntity.hashCode;
  }
}
