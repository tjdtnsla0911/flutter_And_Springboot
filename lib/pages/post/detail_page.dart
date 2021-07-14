import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:flutter_blog/pages/post/update_page.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


class DetailPage extends StatelessWidget {

  final int id ;

  const DetailPage(this.id); //생성자


  // const DetailPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    // String data = Get.arguments; //return Type 다이나믹타입임임

    return Scaffold(
      appBar: AppBar(

        title: Text('뀨우우우우우'),
      ),
      body : Padding(
        padding: EdgeInsets.all(8.0),  //전체적인여백

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Text('글 제목 $id',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),

            Divider(),

            Row(children: [
              ElevatedButton(
                  onPressed: (){
                    //나중에 상태관리로 갱신시킬수있기때문에 밑에 뭘써도상관엇음
                    Get.off(HomePage());
                    // Get.back(); //뒤로가기하면안댐 갱신이안될수가잇음
                    // Get.off(); 요놈은 뒤로가기를 불가능하게함
                    //Get.back();은 현재 디테일페이지를 날려버리고 뒤로가는거 (Stack에서뺌)
                    //일단은 지금은 새로운 객체를 만들어서 가는게나음
                  },
                  child: Text('삭제!')),
              SizedBox(width: 10,), // 요놈으로 Button 간격뛰움
              ElevatedButton(
                onPressed: (){
                  Get.to(UpdatePage());
                },
                child: Text('수정!'),

              ),
            ],),
            Expanded(

              child : SingleChildScrollView( //하나밖에없어서 single을씀
                child : Text('피릿'*1500),
             ),
            ),
          ],
        ),

      ),
    );
  }
}
