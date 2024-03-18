import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class PostView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: Consumer<PostViewModel>(
        builder: (context, viewModel, child) {
          if (viewModel.posts.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: viewModel.posts.length,
              itemBuilder: (context, index) {
                final Post post = viewModel.posts[index];
                return ListTile(
                  title: Text(post.title),
                  subtitle: Text(post.body),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<PostViewModel>(context, listen: false).fetchPosts();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

class Post {
  final int id;
  final String title;
  final String body;

  Post({required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}



class PostViewModel extends ChangeNotifier {
  List<Post> _posts = [];
  List<Post> get posts => _posts;

  Future<void> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      _posts = jsonData.map((json) => Post.fromJson(json)).toList();
      notifyListeners();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
