import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_router.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
    );  
  }
}