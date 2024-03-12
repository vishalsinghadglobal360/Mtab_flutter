import 'package:flutter/material.dart';
import 'package:mtabflutter/viewmodels/splash_view_model.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameCt = TextEditingController(text: 'bbsr.susanta');
  TextEditingController passwordCt = TextEditingController(text: 'maruti123');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.all(10.0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Add your logo image here
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Column(
                //   children: [
                //     TextField(
                //       maxLength: 16,
                //       controller: userNameCt,
                //       keyboardType: TextInputType.number,
                //       style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.normal),
                //       decoration: const InputDecoration(
                //         hintText: 'User Name',
                //         labelText: 'User Name',
                //       ),
                //     ),
                //     TextField(
                //       maxLength: 10,
                //       controller: passwordCt,
                //       keyboardType: TextInputType.visiblePassword,
                //       style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.normal),
                //       decoration: const InputDecoration(
                //         hintText: 'Password',
                //         labelText: 'Password',
                //       ),
                //     ),
                //   ],
                //
                // ),
                Image.asset(
                  'assets/images/welcome_maruti.png',
                  width: 200, // Adjust the width as needed
                  height: 200, // Adjust the height as needed
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('IMEI - 32e1612c3bf79712',
                  style: TextStyle(fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.normal),
                ),
                Text('Powered By - Adglobal360',
                  style: TextStyle(fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.normal),
                ),
                Text('Version: 8.4 Dev',
                  style: TextStyle(fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.normal),
                ),

              ],
            )
          ],
        ),

      ),
    );
  }
}