class Post {
  int? id;
  int? userId;
  String? title;
  String? body;

  Post(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

  Post.fromJson(Map<String,dynamic> json){
    id = json['id'];
    userId = json['user'];
    title = json['title'];
    body = json['body'];
  }

  Map<String,dynamic>toJson(){
    Map<String,dynamic>json={};
    json['id']= id;
    json['userId'] = userId;
    json['title']= title;
    json['body']=body;
    return json;
  }
}
