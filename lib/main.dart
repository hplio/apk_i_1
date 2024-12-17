import 'package:apk_i_1/screens/weeding/weeding_page.dart';
import 'package:apk_i_1/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  // runApp(const MyApp());
   WidgetsFlutterBinding.ensureInitialized();

  // Lock the app orientation to portrait only
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
    
      theme: ThemeDesinge.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const WeedingPage(),
    );
  }
}