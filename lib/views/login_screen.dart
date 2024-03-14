import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:mtabflutter/AppColors.dart';
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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Center(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black12,
                                      width: 1.0
                                  ),
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextField(
                                    controller: userNameCt,
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.normal
                                    ),
                                    keyboardType: TextInputType.text,
                                    decoration:  InputDecoration(
                                      hintText: 'Enter User Name',
                                      labelText: 'User Name',
                                      labelStyle: TextStyle(color: PRIMARY_COLOR,fontWeight: FontWeight.w400),
                                      filled: true,
                                      fillColor:SecondaryInputFill,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: PRIMARY_COLOR),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: PRIMARY_COLOR, width: 2.0),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black12),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                    ),

                                  ),
                                  SizedBox(height: 10,),
                                  TextField(
                                    maxLength: 10,
                                    controller: passwordCt,
                                    obscureText: true,
                                    style: TextStyle(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.normal),
                                    decoration:  InputDecoration(
                                      hintText: 'Enter Password',
                                      labelText: 'Password',
                                      counterText: '',
                                      labelStyle: TextStyle(color: PRIMARY_COLOR,fontWeight: FontWeight.w400),
                                      filled: true,
                                      fillColor:SecondaryInputFill,
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(color: PRIMARY_COLOR),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: PRIMARY_COLOR, width: 2.0),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black12),
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Add your button click logic here
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: SECONDARY_COLOR,
                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                            foregroundColor: Colors.white,
                                            textStyle: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)
                                          ),
                                          child: Text('LOGIN'
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 10), // Add spacing between buttons
                                      Expanded(
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Add your button click logic here
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: SECONDARY_COLOR,
                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                              foregroundColor: Colors.white,
                                              textStyle: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold)
                                          ),
                                          child: Text('Reset',
                                            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],

                              ),
                            ),
                          ),

                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/images/welcome_maruti.png',
                            width: double.infinity, // Adjust the width as needed
                            height: double.infinity, // Adjust the height as needed
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  child: Row(
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
                  ),
                )
              ],
            ),
          ),
      
        ),
      ),
    );
  }
}