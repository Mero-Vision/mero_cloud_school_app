class ApiEndpoints {
  static const Duration receiveTimeout = Duration(seconds: 3);

  static const String baseDomain = "https://merocloudschool.com";
  static const String baseAPIURL = "https://api.merocloudschool.com/api/";
  static const Map<String, dynamic> defaultHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  // Endpoints
  static const String initialURL = "/";

  // Auth
  static String loginURL = "/admin/login";
}
