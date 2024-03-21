import 'package:flutter/material.dart';
import 'package:mvvm1/repositories/posts_api.dart';
import 'package:mvvm1/view_models/posts_view_model.dart';
import 'package:mvvm1/views/posts/post_view.dart';

import '../../view_models/post_view_model.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  PostsViewModel postsViewModel = PostsViewModel(postRepository: PostsApi());
  List<PostViewModel>posts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postsViewModel.title),
      ),
      body: Center(
          child: FutureBuilder<List<PostViewModel>>(
        future: postsViewModel.fetchAllPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('loading');
          } else {
            posts = snapshot.data!;
            return ListView.builder(
              itemCount: posts?.length ,
              itemBuilder: (context, index) => PostView(),
            );
          }
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.get_app),
      ),
    );
  }
}
