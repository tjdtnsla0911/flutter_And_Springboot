import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_elevated_button.dart';
import 'package:flutter_blog/components/custom_text_form_field.dart';

class JoinPage extends StatelessWidget {
  // const DetailPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child:
    ListView(
        children: <Widget>[
          SizedBox(height: 200,), //요놈으로인해 중간으로갈수있따.

          _joinForm(),


        ],

       ),
      ), /////////

    );
  }

  Widget _joinForm() { //return 시엔 항상 부모인 Widget_Type으로잡는게나음
    return Form( //Form으로 감싸서 나중에 SpringBoot로 한번꺼번에 날리고 유효성체크할땐 Form에넣는게나음.
          child: Column(

            children: [
              CustomTextFormFild(hint: "Enter Username",),//얘는 위에 치게해주는놈
              CustomTextFormFild(hint: "Enter Password",),
              CustomTextFormFild(hint: "Enter Email",),
              CustomEleavatedButton(text: "회원가입"),

            ],
          ),

        );
  }
}



