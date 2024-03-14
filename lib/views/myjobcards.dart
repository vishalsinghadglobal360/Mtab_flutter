
import 'package:flutter/material.dart';

class MyJobcard extends StatefulWidget {
  const MyJobcard({super.key});

  @override
  State<MyJobcard> createState() => _MyJobcardState();
}

class _MyJobcardState extends State<MyJobcard> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Row(
              children: [

                Image.asset(
                  'drawable/ic_ms_service_logo_new', // Replace 'my_image' with the name of your image file (without the file extension)
                  width: 200,
                  height: 200,
                ),

                /*Image.asset(
                  'assets/images/ic_ms_service_logo_new.xml',
                  width: 200, // Adjust the width as needed
                  height: 200, // Adjust the height as needed
                )*/

              ],
          )
        ],
      ),
    );
  }
}
