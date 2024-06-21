import 'package:mero_cloud_school/core/common/exports.dart';
// ! DO NOT MODIFY THIS FILE

class AppErrorHandler {
  final String message;
  final String? code;
  final String? data;
  final bool? status;
  AppErrorHandler({
    required this.message,
    this.code,
    this.data,
    this.status,
  });

  AppErrorHandler copyWith({
    String? message,
    ValueGetter<String?>? code,
    ValueGetter<String?>? data,
    ValueGetter<bool?>? status,
  }) {
    return AppErrorHandler(
      message: message ?? this.message,
      code: code != null ? code() : this.code,
      data: data != null ? data() : this.data,
      status: status != null ? status() : this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'message': message,
      'code': code,
      'data': data,
      'status': status,
    };
  }

  factory AppErrorHandler.fromMap(Map<String, dynamic> map) {
    return AppErrorHandler(
      message: map['message'] ?? '',
      code: map['code'],
      data: map['data'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory AppErrorHandler.fromJson(String source) =>
      AppErrorHandler.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Failure(message: $message, code: $code, data: $data, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppErrorHandler &&
        other.message == message &&
        other.code == code &&
        other.data == data &&
        other.status == status;
  }

  @override
  int get hashCode {
    return message.hashCode ^ code.hashCode ^ data.hashCode ^ status.hashCode;
  }

  static AppErrorHandler fromDioException(DioException e) {
    return AppErrorHandler(
      message: e.message ?? i10n.error_somethingWentWrong,
      code: e.response?.statusCode.toString(),
      data: e.response?.data.toString(),
      status: false,
    );
  }
}
