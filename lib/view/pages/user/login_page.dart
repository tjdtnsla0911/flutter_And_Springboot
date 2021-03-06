import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/contorller/user_controller.dart';
import 'package:flutter_blog/domain/user/user_repository.dart';
import 'package:flutter_blog/size.dart';

import 'package:flutter_blog/util/Cvallidator_util.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/pages/post/home_page.dart';
import 'package:flutter_blog/view/pages/post/wirte_page.dart';
import 'package:flutter_blog/view/pages/user/User_info.dart';
import 'package:flutter_blog/view/pages/user/join_page.dart';
import 'package:get/get.dart';

class Loginpage extends StatelessWidget {
  // const DetailPage({Key key}) : super(key: key);

  final _formKey = GlobalKey<FormState>(); //form상태관리하는글로벌키
  UserController u = Get.put(UserController()); //상태관리해주는데 이렇게만들어야함;

  final _username = TextEditingController(); //Type을 잘안적는 타입추론이되서
  final _password = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: _navigation(context),
      appBar: AppBar(
        title: Text('로그인 페이지' , style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
        centerTitle: true,


        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(

                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,

                  colors: <Color>[ //여기서컬러조짐
                    Colors.yellow,
                    Colors.blue,
                    Colors.redAccent
                  ]
              )
          ),
        ),

      ),
      body: Padding(

        padding: EdgeInsets.all(20.0),
        child:

        ListView(

          children: <Widget>[
            // SizedBox(height: 200,), //요놈으로인해 중간으로갈수있따.
            Container(

                alignment: Alignment.center,
                height: 200,
                child:Text('로그인화면 \n 로그인상태 : ${u.isLogin}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 33),)

            ),

            _loginForm(),
          ],
        ),
      ), /////////

    );
  }

  Widget _loginForm() { //return 시엔 항상 부모인 Widget_Type으로잡는게나음

    return Form( //Form으로 감싸서 나중에 SpringBoot로 한번꺼번에 날리고 유효성체크할땐 Form에넣는게나음.

      key: _formKey , //key가걸려서 이 form키로 Controll 할수있다.
      child: Column(
        children: [

          CustomTextFormFild(controller: _username, hint: "Username",funvalidator: validateusername()),//얘는 위에 치게해주는놈
          CustomTextFormFild(controller: _password, hint: "Password",funvalidator: validatePassword()),
          CustomEleavatedButton(text: "로그인",
              funpageroute: () async {
                print('pageRoute에옴');
                print('_formKey = $_formKey');
                print('_formKey.currentState = ${_formKey.currentState}');
                //요놈을해줘야  value값을받을수있음
                print('_formKey.currentState.validate() 1= ${!_formKey.currentState!.validate()}');
                print('_formKey.currentState.validate() 2= ${_formKey.currentState!.validate()}');
                if(_formKey.currentState!.validate()){ 
                  print('if문에옴');//요놈으로 트루인지 펄스인지판단
                  //여기서도 async , await를 안하면에러터진다
                  String token = await u.login(_username.text.trim(), _password.text.trim()); //trim은 글자양옆으로 공백제거해줌
                  print('token 끝나자마자 받은 token = $token');
                  if(token !=  "-1"){ //token이 null이아니라면( "-1")
                    print('Token 정상적으로받음');
                    Get.to(()=>HomePage()); //메모리에서 제거하고싶으면 이렇게해라함
                  }else{//Login실패
                    print('Token실패');
                    Get.snackbar("로그인 시도", "로그인 실패");
                  }
                  // Get.to(HomePage());
                }
              }
          ),

          TextButton(
              onPressed: (){
                Get.to(JoinPage());
              },
              child: Text('아직 회원가입을 하시지 않으셨나요?')
          ),


        ],

      ),

    );
  }
}
Widget _navigation(BuildContext context) { //return 타입은 위젯으로잡는게 좋다함
  return Container(

    width: getDrawerWidth(context) , //얘가길이재는데 그걸 나누는방식
    height: double.infinity, //요놈은몰겟다
    // color: Colors.teal,

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


