import 'package:cloud_storage/screen/main/main_page.dart';
import 'package:cloud_storage/screen/storage/storage_page.dart';
import 'package:flutter/cupertino.dart';

class AppRout {
  static final Map<String, WidgetBuilder> routes = {
    '/main': (context) => const MainPage(),
    '/storagePage': (context) => const StoragePage(),
  };
}
