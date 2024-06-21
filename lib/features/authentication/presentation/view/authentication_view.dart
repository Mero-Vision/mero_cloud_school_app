import 'package:mero_cloud_school/core/common/exports.dart';

import 'package:flutter/material.dart';

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({super.key});

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AuthenticationView'),
      ),
      body: const Center(
        child: Text('AuthenticationView'),
      ),
    );
  }
}
