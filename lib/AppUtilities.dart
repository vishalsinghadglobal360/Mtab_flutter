import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(var message){
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT, // Duration for which the toast message will be shown
    gravity: ToastGravity.BOTTOM, // Position of the toast message
    timeInSecForIosWeb: 1, // Time for iOS and web
    backgroundColor: Colors.black54, // Background color of the toast message
    textColor: Colors.white, // Text color of the toast message
    fontSize: 16.0, // Font size of the toast message
  );
}
