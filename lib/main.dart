import 'package:custom_theme/controller/app_configu_controller.dart';
import 'package:custom_theme/utils/app_theme.dart';
import 'package:custom_theme/view/launcher_screen/launcher_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider( providers: [
    ChangeNotifierProvider(create: (context) => AppConfiguController(),)
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: context.watch<AppConfiguController>().isDark?
      ThemeData.dark:ThemeData.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darTheme,
      home: LauncherScreen(),
    );
  }
}
