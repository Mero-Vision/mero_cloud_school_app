import 'package:mero_cloud_school/core/common/exports.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _onLoadNavigation();
  }

  void _onLoadNavigation() async {
    final navigator = Navigator.of(context);
    final setting = await locator<SettingsHiveService>().getSettings();
    if (setting.loginDTO == null && setting.loginDTO?.data?.token == null) {
      navigator.popAndPushNamed(AppRoutes.loginRoute);
    } else {
      navigator.popAndPushNamed(AppRoutes.unknownRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SplashView'),
      ),
      body: const Center(
        child: Text('SplashView'),
      ),
    );
  }
}
