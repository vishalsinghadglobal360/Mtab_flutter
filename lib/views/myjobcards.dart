
import 'package:flutter/material.dart';
import 'package:mtabflutter/AppColors.dart';

class MyJobcard extends StatefulWidget {
  const MyJobcard({super.key});

  @override
  State<MyJobcard> createState() => _MyJobcardState();
}

class _MyJobcardState extends State<MyJobcard> {
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 50,
              color: PRIMARY_COLOR,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: double.infinity, // Set the height of the container
                      child: Image.asset(
                        'assets/images/ic_ms_service_logo_new.PNG', // Replace 'assets/image.jpg' with your image path
                        fit: BoxFit.fill, // This will make the image cover the entire container
                      ),
                    ),

                  /*  Container(
                      child:  Image.asset(
                        'assets/images/ic_ms_service_logo_new.PNG',
                        height: double.infinity, // Adjust the height as needed
                      ),
                    )*/
      
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
