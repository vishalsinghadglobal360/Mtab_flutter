
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:mtabflutter/models/JobcardListModel.dart';

class JobCardListBloc {
  final _jobcardlistController = StreamController<List<JobCardListModel>>();
  Stream<List<JobCardListModel>> get posts => _jobcardlistController.stream;

  void fetchPosts() async {


    const String BASE_URL = "kalyandeep.in";
/*
    const String BASE_URL_IMG = "https://$BASE_URL";*/
    const String GAMENAME = "/application_api/get_games.php";

    const String authority = BASE_URL;
    const String apiurl  = GAMENAME;
    final apiUri = Uri.http(authority,apiurl);
    final response = await http.get(apiUri);

    //final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> dataArray = json['result'];

      final posts = dataArray.map((json) => JobCardListModel.fromJson(json)).toList();

      //final List<dynamic> jsonData = json.decode(response.body);
      //final posts = jsonData.map((json) => JobCardListModel.fromJson(json)).toList();

      _jobcardlistController.sink.add(posts);

    } else {
      throw Exception('Failed to load posts');
    }
  }

  void dispose() {
    _jobcardlistController.close();
  }
}