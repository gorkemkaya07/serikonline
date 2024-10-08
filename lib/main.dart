import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/routes/app_pages.dart';

import 'core/bindings/initial_binding.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';
import 'package:timeago/timeago.dart' as timeago;

void main() {
  timeago.setLocaleMessages('tr', timeago.TrMessages());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialBinding: InitialBinding(),
      initialRoute: AppRoutes.INITIAL, // İlk rota
      getPages: AppPages.pages, // Rota sayfaları burada
    );
  }
}
