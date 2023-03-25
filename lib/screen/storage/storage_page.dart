import 'package:cloud_storage/screen/storage/component/storage_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoragePage extends StatelessWidget {
  const StoragePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: StorageBody(),
      ),
    );
  }
}
