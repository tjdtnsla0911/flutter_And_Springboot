import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:flutter_blog/pages/user/join_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const Myapp({Key key}) : super(key: key); //쓸대없다
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true, //디버그 표시지우는듯 (앱에서)

      //라우트 설계필요없음 . getX 사용할 예정

      home: JoinPage(),
    );
  }
}
