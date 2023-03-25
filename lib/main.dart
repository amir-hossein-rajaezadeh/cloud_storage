import 'package:cloud_storage/screen/main/main_page.dart';
import 'package:cloud_storage/screen/utils/route.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
              routes: AppRout.routes,

        home: const MainPage(),
        );
  }
}
