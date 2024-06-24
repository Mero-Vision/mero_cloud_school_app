import 'package:mero_cloud_school/core/common/exports.dart';
import 'package:dartz/dartz.dart';

class LogoutUsecase extends Usecase<void, void> {
  final SettingsHiveService settingsHiveService;

  LogoutUsecase({
    required this.settingsHiveService,
  });

  @override
  Future<Either<AppErrorHandler, void>> call(
    void params,
  ) async {
    final settings = await settingsHiveService.getSettings();
    await settingsHiveService.updateSettings(
      settings.copyWith(
        loginDTO: () => null,
      ),
    );

    return const Right(null);
  }
}
