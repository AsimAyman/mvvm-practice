import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:mvvm1/models/posts_model.dart';
import 'package:mvvm1/repositories/posts_repository.dart';

class PostsApi extends PostRepository {
  @override
  Future<List<Post>> getAllPosts() async {
    List<Post> posts = [];
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/posts');
      List dataList = response.data;
      posts = dataList.map((e) => Post.fromJson(e)).toList();
    } catch (e) {
      log(e.toString());
    }
    return posts;
  }

  @override
  Future<Post> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
}
