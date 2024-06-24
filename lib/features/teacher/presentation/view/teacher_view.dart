import 'package:mero_cloud_school/core/common/exports.dart';

  import 'package:flutter/material.dart';

  class TeacherView extends StatefulWidget {
    const TeacherView({super.key});
  
    @override
    State<TeacherView> createState() => _TeacherViewState();
  }
  
  class _TeacherViewState extends State<TeacherView> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('TeacherView'),
        ),
        body: const Center(
          child: Text('TeacherView'),
        ),
      );
    }
  }
              
              