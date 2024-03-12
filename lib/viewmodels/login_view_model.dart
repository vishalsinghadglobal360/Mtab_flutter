import 'package:flutter/material.dart';
import 'package:mtabflutter/models/splash_model.dart';
import 'package:provider/provider.dart';

class LoginViewModel extends ChangeNotifier {
  // Add any properties and methods related to the splash screen logic
  // For example, loading data, checking authentication, etc.

  Future<void> loadData() async {
    // Simulate loading data or any other async operations
    await Future.delayed(Duration(seconds: 2));
  }
}