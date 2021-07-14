import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/detail_page.dart';
import 'package:flutter_blog/pages/post/wirte_page.dart';
import 'package:flutter_blog/pages/user/User_info.dart';
import 'package:flutter_blog/pages/user/login_page.dart';
import 'package:flutter_blog/size.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class HomePage extends StatelessWidget {
  // const DetailPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _navigation(context),
      appBar: AppBar(
          title: Text('김스프링님'),
          centerTitle: true,
      ), //앱바는 히스토리를 들고있어서 자동으로 뒤로가기가있다

      body: Center(
        child: ListView.separated( //구분선 넣고싶으면 separated 쓰면댐
          itemCount: 3,

          itemBuilder: (context, index) {

          return ListTile(

            onTap: (){
              Get.to(DetailPage(index), arguments: 'argument 속성 테스트');

              print('homePage에 ListTitle Click');

            },

            title: Text('제목1'),
            leading: Text('1'),
          );

        },
            separatorBuilder: (context, index) {
              return Divider();
            },

        ),
      ),
    );
  }

  Widget _navigation(BuildContext context) { //return 타입은 위젯으로잡는게 좋다함
    return Container(
      width: getDrawerWidth(context) , //얘가길이재는데 그걸 나누는방식
      height: double.infinity, //요놈은몰겟다
      color: Colors.white,

      child: SafeArea( //얘를넣으면 안으로 쏙들어감
        child : Padding(
          padding: const EdgeInsets.all(16.0),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //왼쪽으로쫙붙음
          children: <Widget>[

            Divider(), //얘가선넣어줌

          TextButton(

              onPressed: (){
                Get.to(UserInfo());
              },

              child:Text('회원정보보기',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38
                ),)

          ),

            Divider(), //얘가선넣어줌

          TextButton(

              onPressed: (){
                Get.to(Loginpage());
              },

              child:Text('로그아웃',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38
                ),)

          ),

            Divider(),//얘가선넣어줌

            TextButton(

                onPressed: (){
                  Get.to(WirtePage());
                },
                child: Text('글쓰기',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38
                  ),),

            ),

            Divider(),
        ],

        ),
      ),
      ),
    );
  }
}