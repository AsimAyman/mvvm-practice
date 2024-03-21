import 'package:mvvm1/models/posts_model.dart';
import 'package:mvvm1/repositories/posts_repository.dart';

class PostLocal extends PostRepository{
  @override
  Future<List<Post>> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
  }

  @override
  Future<Post> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }
  
}