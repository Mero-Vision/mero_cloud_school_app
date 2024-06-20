
  import '../data_source/local/splash_local_data_source.dart';
  import '../data_source/remote/splash_remote_data_source.dart';
  import '../../domain/repository/splash_repository.dart';


  class SplashRepositoryImpl implements ISplashRepository {
    final SplashLocalDataSource localDataSource;
    final SplashRemoteDataSource remoteDataSource;
  
    SplashRepositoryImpl({
      required this.localDataSource,
      required this.remoteDataSource,
    });
  }
            