import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mero_cloud_school/core/common/custom_widgets/custom_button.dart';
import 'package:mero_cloud_school/core/common/exports.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('HomeView'),
          KButton(
            onPressed: () {
              BlocProvider.of<AuthenticationCubit>(context).logout(
                onError: (error) {
                  kShowSnackBar(
                      message: error, context: context, isError: true);
                },
                onSuccess: () {
                  kShowSnackBar(
                    message: 'Logout Successful',
                    context: context,
                  );
                },
                navigation: () {
                  Navigator.of(context).popAndPushNamed(AppRoutes.loginRoute);
                },
              );
            },
            label: "Logout",
          )
        ],
      ),
    );
  }
}
