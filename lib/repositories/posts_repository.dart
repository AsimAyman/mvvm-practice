
import '../models/posts_model.dart';

abstract class PostRepository{
  Future<List<Post>> getAllPosts();
  Future<Post> getPostById(int id);
}