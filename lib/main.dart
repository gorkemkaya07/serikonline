import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:serikonline/core/routes/app_pages.dart';

import 'core/bindings/initial_binding.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';

void main() {
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
      initialRoute: AppRoutes.INITIAL, // İlk rota INITIAL olacak
      getPages: AppPages.pages, // Rota sayfaları burada
      
    );
  }
}
