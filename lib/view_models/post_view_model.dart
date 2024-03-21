import '../models/posts_model.dart';

class PostViewModel {
  PostViewModel({required this.post});
  Post post;

  get id => post.id;
  get userId => post.userId;
  get title =>post.title;
  get body => post.body;
}
