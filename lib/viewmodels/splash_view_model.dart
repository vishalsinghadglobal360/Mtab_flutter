import 'package:flutter/material.dart';
import 'package:mtabflutter/ApiServicesList.dart';
import 'package:mtabflutter/AppUtilities.dart';
import 'package:mtabflutter/models/splash_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mtabflutter/views/splash_screen.dart';


class SplashViewModel extends ChangeNotifier {
  // Add any properties and methods related to the splash screen logic
  // For example, loading data, checking authentication, etc.

  SplashDataResponse? splashResponse;

  Future<void> fetchData() async {
    final Uri uri = Uri.parse(PullAllConfig);
    SplashRequest splashRequest = SplashRequest(type: APP_ENV);
    final Map<String, dynamic> reqBody = splashRequest.toMap();
      final response = await http.post(uri, body: reqBody);
      displayLogs(reqBody, response);

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = json.decode(response.body);
        splashResponse = SplashDataResponse.fromJson(data);
        notifyListeners();
      } else {
        var err = 'Failed to load data';
        showToast(err);
        throw Exception(err);
      }
  }
}