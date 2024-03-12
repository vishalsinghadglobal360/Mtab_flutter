import 'package:flutter/material.dart';
import 'package:mtabflutter/viewmodels/splash_view_model.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add your logo image here
            Image.asset(
              'assets/images/welcome_maruti.png',
              width: double.maxFinite, // Adjust the width as needed
              height: 200, // Adjust the height as needed
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}