
import 'package:flutter_blog/domain/post/post.dart';
import 'package:intl/intl_browser.dart'; //난시발 DateFormat가안되서 포기



class User{
  //다트2.0이상은 에러떠야하는데 난에러안뜸 ㅅㅂ
   final int? id;
   final String? username;
   final String? password;
   final String? email;
   final DateTime? created;
   final DateTime? updated;
//생성자안에  { }를 넣어서 선택적매개변수로바꿈 / 받아도되고 안받아도됨
  User({this.id, this.username, this.password, this.email,
    this.created, this.updated
  });

  //통신을 위해서 JSON 이란 데이터 타입으로 넘어옴

  User.fromJson(Map<String,dynamic> json)
      : id = json["id"], username = json["username"]
      , password = json["password"] ,
        email = json["email"]
       ,created = DateTime.parse(json["created"])
        ,updated = DateTime.parse(json["updated"]);

}