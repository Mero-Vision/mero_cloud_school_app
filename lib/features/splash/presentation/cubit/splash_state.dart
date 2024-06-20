import 'package:mero_cloud_school/core/common/exports.dart';

    import 'dart:convert';

class SplashState {
    final bool isLoading;
    final bool isSuccess;
    SplashState({
      required this.isLoading,
      required this.isSuccess,
    });
  
    factory SplashState.initial() {
      return SplashState(
        isLoading: false,
        isSuccess: false,
      );
    }
  
    SplashState copyWith({
      bool? isLoading,
      bool? isSuccess,
    }) {
      return SplashState(
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
  
    factory SplashState.fromMap(Map<String, dynamic> map) {
      return SplashState(
        isLoading: map['isLoading'] as bool,
        isSuccess: map['isSuccess'] as bool,
      );
    }
  
    String toJson() => json.encode(toMap());
  
    factory SplashState.fromJson(String source) =>
        SplashState.fromMap(json.decode(source) as Map<String, dynamic>);
  
    @override
    String toString() =>
        'SplashState(isLoading: $isLoading, isSuccess: $isSuccess)';
  
    @override
    bool operator ==(covariant SplashState other) {
      if (identical(this, other)) return true;
  
      return other.isLoading == isLoading && other.isSuccess == isSuccess;
    }
  
    @override
    int get hashCode => isLoading.hashCode ^ isSuccess.hashCode;
  }
        