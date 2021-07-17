import 'package:flutter_blog/domain/user/user.dart';
import 'package:intl/intl_browser.dart'; //난시발 DateFormat가안되서 포기

class Post {
  //다트2.0이상은 에러떠야하는데 난에러안뜸 ㅅㅂ
  final int? id;
  final String? title;

  final String? content;
  final User? user;
  final DateTime? created;
  final DateTime? updated;

//생성자안에  { }를 넣어서 선택적매개변수로바꿈 / 받아도되고 안받아도됨
  Post(
      {this.id,
      this.title,
      this.content,
      this.created,
      this.updated,
      this.user});

  //통신을 위해서 JSON 이란 데이터 타입으로 넘어옴

  Post.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        content = json["content"],
        user = User.fromJson(json["user"]),
        created = DateTime.parse(json["created"]),
        updated = DateTime.parse(json["updated"]);
}
