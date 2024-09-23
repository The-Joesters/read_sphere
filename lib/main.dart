import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:readsphere_ieee/screens/splash.dart';
import 'package:screen_go/screen_go.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? sharedPreferences;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(
    DevicePreview(
      enabled: false, // Enable in debug mode only
      builder: (context) => const ReadSphere(), // Your app widget
    ),
  );
}

class ReadSphere extends StatelessWidget {
  const ReadSphere({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenGo(
      materialApp: true,
      builder: (context, deviceInfo) => const GetMaterialApp(
        builder: DevicePreview.appBuilder, // Add this line
        useInheritedMediaQuery: true, // Add this line

        locale: Locale("en"),

        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
