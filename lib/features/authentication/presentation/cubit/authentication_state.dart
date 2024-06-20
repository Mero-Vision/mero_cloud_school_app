import 'package:mero_cloud_school/core/common/exports.dart';

    import 'dart:convert';

class AuthenticationState {
    final bool isLoading;
    final bool isSuccess;
    AuthenticationState({
      required this.isLoading,
      required this.isSuccess,
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
    }) {
      return AuthenticationState(
        isLoading: isLoading ?? this.isLoading,
        isSuccess: isSuccess ?? this.isSuccess,
      );
    }
  
    Map<String, dynamic> toMap() {
      return <String, dynamic>{
        'isLoading': isLoading,
        'isSuccess': isSuccess,
      };
    }
  
    factory AuthenticationState.fromMap(Map<String, dynamic> map) {
      return AuthenticationState(
        isLoading: map['isLoading'] as bool,
        isSuccess: map['isSuccess'] as bool,
      );
    }
  
    String toJson() => json.encode(toMap());
  
    factory AuthenticationState.fromJson(String source) =>
        AuthenticationState.fromMap(json.decode(source) as Map<String, dynamic>);
  
    @override
    String toString() =>
        'AuthenticationState(isLoading: $isLoading, isSuccess: $isSuccess)';
  
    @override
    bool operator ==(covariant AuthenticationState other) {
      if (identical(this, other)) return true;
  
      return other.isLoading == isLoading && other.isSuccess == isSuccess;
    }
  
    @override
    int get hashCode => isLoading.hashCode ^ isSuccess.hashCode;
  }
        