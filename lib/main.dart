import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mtabflutter/viewmodels/splash_view_model.dart';
import 'package:mtabflutter/views/deshboard_screen.dart';
import 'package:mtabflutter/views/login_screen.dart';
import 'package:mtabflutter/views/myjobcards.dart';
import 'package:mtabflutter/views/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:mtabflutter/AppColors.dart';

import 'Test.dart';

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
   // Set the status bar color
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: PRIMARY_COLOR, // Change this color as needed
        statusBarIconBrightness: Brightness.light, // Use Brightness.dark for dark icons
      ),
    );
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => SplashViewModel(),
        child: SplashView(),
      ),
    );
  }
}
class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SplashViewModel>(
      builder: (context, viewModel, child) {
        return LoginScreen();
        //return LoginScreen();
        return FutureBuilder(
          future: viewModel.loadData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // Navigate to the main screen after loading data
              // Replace `LoginScreen` with your main screen
              return LoginScreen();
            } else {
              // Show the splash screen while loading data
              return SplashScreen();
            }
          },
        );
      },
    );
  }
}