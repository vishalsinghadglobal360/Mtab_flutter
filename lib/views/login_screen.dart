import 'package:flutter/cupertino.dart';
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
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your text',
                              labelText: 'Text',
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (text) {
                              /* setState(() {
                                _enteredText = text;
                              });*/
                            },
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your text',
                              labelText: 'Text',
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (text) {
                              /* setState(() {
                                _enteredText = text;
                              });*/
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      child:    Image.asset(
                        'assets/images/welcome_maruti.png',
                        width: 200, // Adjust the width as needed
                        height: 200, // Adjust the height as needed
                      ),
                    ),
                  )
                ],
              ),
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