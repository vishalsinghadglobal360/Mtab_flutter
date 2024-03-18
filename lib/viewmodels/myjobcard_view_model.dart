import 'package:flutter/material.dart';
import 'package:mtabflutter/models/JobcardListModel.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class MYJOBCARDVIEWMODEL extends ChangeNotifier {
  // Add any properties and methods related to the splash screen logic
  // For example, loading data, checking authentication, etc.

  late List<JobCardListModel> _posts = [];
  List<JobCardListModel> get posts => _posts;

/*  Future<void> fetchPosts() async {
    final response =
    await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      _posts = jsonData.map((json) => JobCardListModel.fromJson(json)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load posts');
    }
  }*/

  Future<void> fetchPosts() async {
    const String BASE_URL = "kalyandeep.in";
    const String BASE_URL_IMG = "https://$BASE_URL";
    const String FOLDER = "/application_api/";
    const String GAMENAME = FOLDER+"get_games.php";

    const String authority = BASE_URL;
    const String apiurl  = GAMENAME;
    final apiUri = Uri.http(authority,apiurl);
    final response = await http.get(apiUri);
    Map<String, dynamic> body = {
      'phone_number':"7938824349",
    };
    displayLogs(body,response);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);

      // Get the data array from the JSON response
      List<dynamic> dataArray = json['result'];

      // List<dynamic> jsonResponse = json('response.body');
      //return dataArray.map((data) => GameData.fromJson(data)).toList();

      _posts = dataArray.map((json) => JobCardListModel.fromJson(json)).toList();
      notifyListeners();

    } else {
      throw Exception('Failed to load data');
    }
  }

  displayLogs(var body, var response){
    print('API-Request:: ${response.request.toString()}');
    print('API-Inputs:: ${jsonEncode(body)}');
    print('API-Headers:: ${response.request?.headers.toString()}');
    print('API-Status:: ${response.statusCode.toString()}');
    print('API-Response:: ${response.body.toString()}');
  }


}