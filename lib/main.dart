import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:flutter_blog/pages/post/wirte_page.dart';
import 'package:flutter_blog/pages/user/join_page.dart';
import 'package:flutter_blog/pages/user/login_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const Myapp({Key key}) : super(key: key); //쓸대없다
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp( // 얘는골때리게 자동완성이안댐 ㅋㅋ 시발꺼
      debugShowCheckedModeBanner: true, //디버그 표시지우는듯 (앱에서)
      //라우트 설계필요없음 . getX 사용할 예정
      // home: HomePage(),
      home: WirtePage(),
    );

  }
}
