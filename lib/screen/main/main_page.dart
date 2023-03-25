import 'package:cloud_storage/screen/main/component/main_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MainBody(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff7b3eff),
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.pushNamed(context, "/storagePage");
          },
        ),
      ),
    );
  }
}
