
import 'package:mvvm1/repositories/posts_repository.dart';
import 'package:mvvm1/view_models/post_view_model.dart';
import '../models/posts_model.dart';

class PostsViewModel{
  final String title ="All Posts";
  PostRepository postRepository;
  PostsViewModel({required this.postRepository});

 Future<List<PostViewModel>> fetchAllPosts()async{
   List<Post> list = await postRepository.getAllPosts();
   return list.map((post) => PostViewModel(post:post)).toList();
  }
}