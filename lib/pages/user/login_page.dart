import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_elevated_button.dart';
import 'package:flutter_blog/components/custom_text_form_field.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:flutter_blog/pages/user/join_page.dart';
import 'package:flutter_blog/util/Cvallidator_util.dart';
import 'package:get/get.dart';

class Loginpage extends StatelessWidget {
  // const DetailPage({Key key}) : super(key: key);

  final _formKey = GlobalKey<FormState>(); //form상태관리하는글로벌키

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Padding(

        padding: EdgeInsets.all(20.0),
        child:

        ListView(

          children: <Widget>[
            // SizedBox(height: 200,), //요놈으로인해 중간으로갈수있따.
            Container(

                alignment: Alignment.center,
                height: 200,
                child:Text('로그인화면 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 33),)

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

          CustomTextFormFild(hint: "Username",funvalidator: validateusername()),//얘는 위에 치게해주는놈
          CustomTextFormFild(hint: "Password",funvalidator: validatePassword()),
          CustomEleavatedButton(text: "로그인",
              funpageroute: () {
                print('pageRoute에옴');
                print('_formKey = $_formKey');
                print('_formKey.currentState = ${_formKey.currentState}');
                //요놈을해줘야  value값을받을수있음
                print('_formKey.currentState.validate() 1= ${!_formKey.currentState.validate()}');
                print('_formKey.currentState.validate() 2= ${_formKey.currentState.validate()}');
                if(_formKey.currentState.validate()){ //요놈으로 트루인지 펄스인지판단
                  Get.to(HomePage());
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



