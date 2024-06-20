
  import '../data_source/local/authentication_local_data_source.dart';
  import '../data_source/remote/authentication_remote_data_source.dart';
  import '../../domain/repository/authentication_repository.dart';


  class AuthenticationRepositoryImpl implements IAuthenticationRepository {
    final AuthenticationLocalDataSource localDataSource;
    final AuthenticationRemoteDataSource remoteDataSource;
  
    AuthenticationRepositoryImpl({
      required this.localDataSource,
      required this.remoteDataSource,
    });
  }
            