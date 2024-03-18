import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mtabflutter/AppColors.dart';
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
    Provider.of<SplashViewModel>(context,listen:false).fetchData();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<SplashViewModel>(
          builder: (context, viewModel, child) {
            if(viewModel.splashResponse!=null && viewModel.splashResponse?.code=='0'){
              Timer(const Duration(seconds: 2), () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              });
              return SplashUI();
            }
            else  {
              // Show the splash screen while loading data
              return SplashUI();
            }
          },
        ),
      ),
    );
  }

}
class SplashUI extends StatelessWidget{
  @override
  Widget build(BuildContext context){
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
                SizedBox(height: 10),
                CircularProgressIndicator(color: PRIMARY_COLOR),
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
}