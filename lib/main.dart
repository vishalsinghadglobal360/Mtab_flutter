import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtabflutter/viewmodels/splash_view_model.dart';
import 'package:mtabflutter/views/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure that Flutter bindings are initialized

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //   SystemUiOverlayStyle(
    //     statusBarColor: STATUS_BAR_COLOR, // Change this color as needed
    //     statusBarIconBrightness: Brightness.light, // Use Brightness.dark for dark icons
    //   ),
    // );
    return ChangeNotifierProvider(
    create: (context) => SplashViewModel(),
    child: MaterialApp(
    home: SplashScreen(), // SplashScreen is a child of MaterialApp
    ),
    );
  }
}