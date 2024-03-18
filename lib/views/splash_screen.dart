import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mtabflutter/AppUtilities.dart';
import 'package:mtabflutter/viewmodels/splash_view_model.dart';
import 'package:mtabflutter/views/login_screen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      SplashViewModel splashViewModel = SplashViewModel();
      splashViewModel.fetchData();
    });

  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context)=>SplashViewModel(),
    child: MaterialApp(
      home: Scaffold(
        body: Center(
          child: Consumer<SplashViewModel>(
            builder: (context, viewModel, child) {
              if(viewModel.splashResponse!=null && viewModel.splashResponse.code=='0'){
                showToast(viewModel.splashResponse.message);
                return LoginScreen();
              }
              else  {
                // Show the splash screen while loading data
                return MaterialApp(
                  home: Scaffold(
                    backgroundColor: Colors.white,
                    body: SafeArea(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Add your logo image here
                            Image.asset(
                              'assets/images/welcome_maruti.png',
                              width: double.maxFinite, // Adjust the width as needed
                              height: 200, // Adjust the height as needed
                            ),
                            SizedBox(height: 20),
                            Text('Powered By - Adglobal360',
                              style: TextStyle(fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }

            },
          ),
      ),
    )));

    return Provider(create: (_) =>
        Consumer<SplashViewModel>(
      builder: (context, viewModel, child) {
        return FutureBuilder(
          future: viewModel.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // Navigate to the main screen after loading data
              // Replace `LoginScreen` with your main screen
              return LoginScreen();
            } else {
              // Show the splash screen while loading data
              return MaterialApp(
                home: Scaffold(
                  backgroundColor: Colors.white,
                  body: SafeArea(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Add your logo image here
                          Image.asset(
                            'assets/images/welcome_maruti.png',
                            width: double.maxFinite, // Adjust the width as needed
                            height: 200, // Adjust the height as needed
                          ),
                          SizedBox(height: 20),
                          Text('Powered By - Adglobal360',
                            style: TextStyle(fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          },
        );
      },
    )
    );
  }
}