import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  await init();
  final box = GetStorage();
  await box.writeIfNull('is_first', true);
  bool isFirst = box.read('is_first');

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: isFirst ? AppPages.INITIAL : AppPages.INITIALHOME,
      getPages: AppPages.routes,
    ),
  );
}

Future<void> init() async {
  await GetStorage.init();
}
