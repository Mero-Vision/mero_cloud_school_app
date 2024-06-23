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

  // Master Data
  static String religionsMasterDataURL = "/admin/master-data/religions";
  static String jobTypesMasterDataURL = "/admin/master-data/job-types";
  static String maritalStatusMasterDataURL =
      "/admin/master-data/marital-status";
  static String designationsMasterDataURL = "/admin/master-data/designations";
  static String gendersMasterDataURL = "/admin/master-data/genders";

  // Auth
  static String loginURL = "/admin/login";
}
