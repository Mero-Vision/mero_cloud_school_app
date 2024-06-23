import 'package:mero_cloud_school/core/common/exports.dart';

  import 'package:flutter/material.dart';

  class MasterDataView extends StatefulWidget {
    const MasterDataView({super.key});
  
    @override
    State<MasterDataView> createState() => _MasterDataViewState();
  }
  
  class _MasterDataViewState extends State<MasterDataView> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('MasterDataView'),
        ),
        body: const Center(
          child: Text('MasterDataView'),
        ),
      );
    }
  }
              
              