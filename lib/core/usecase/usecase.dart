import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

    
    abstract class Usecase<Type, Params> {
      Future<Either<Failure, Type>> call(Params params);
    }
    