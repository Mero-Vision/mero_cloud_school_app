import 'package:mero_cloud_school/core/common/exports.dart';



  class SplashRepositoryImpl implements ISplashRepository {
    final SplashLocalDataSource localDataSource;
    final SplashRemoteDataSource remoteDataSource;
  
    SplashRepositoryImpl({
      required this.localDataSource,
      required this.remoteDataSource,
    });
  }
            