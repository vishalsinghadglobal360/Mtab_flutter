import 'package:flutter/material.dart';
import 'package:mtabflutter/ApiServicesList.dart';
import 'package:mtabflutter/AppUtilities.dart';
import 'package:mtabflutter/models/splash_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class SplashViewModel extends ChangeNotifier {
  // Add any properties and methods related to the splash screen logic
  // For example, loading data, checking authentication, etc.

  late SplashResponse splashResponse;
  bool _isLoading = false; // Flag to track whether API call is in progress

  Future<void> fetchData() async {
    if (_isLoading) {
      return; // If API call is already in progress, return early
    }
    _isLoading = true; // Set loading flag to true before making the API call


    final Uri uri = Uri.parse(PullAllConfig);
    SplashRequest splashRequest = SplashRequest(type: APP_ENV);
    final Map<String, dynamic> reqBody = splashRequest.toMap();
    try {
      final response = await http.post(uri, body: reqBody);
      displayLogs(reqBody, response);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        splashResponse = SplashResponse.fromJson(data);
        notifyListeners();
      } else {
        var err = 'Failed to load data';
        showToast(err);
        throw Exception(err);

      }
    }catch(e){
      print(e.toString());
    }
    finally{
      _isLoading = false; // Reset loading flag when API call completes (whether successful or not)
    }
  }
}