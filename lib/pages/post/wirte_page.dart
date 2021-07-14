import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_elevated_button.dart';
import 'package:flutter_blog/components/custom_text_form_field.dart';
import 'package:flutter_blog/components/custom_textarea.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:flutter_blog/util/Cvallidator_util.dart';
import 'package:get/get.dart';

class WirtePage extends StatelessWidget {
  // const DetailPage({Key key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(padding: EdgeInsets.all(16.0),

      child: Form(
            key: _formKey,

            child: ListView(children: [

            CustomTextFormFild(
              hint: 'title',
              funvalidator: validateTitle(),
            ),

            CustomTextArea(
              hint: 'Content',
              funvalidator: validateContent(),
            ),

            CustomEleavatedButton(
                text: '로그인',
                funpageroute:(){
                  print('funpageroute 클릭');
                  if(_formKey.currentState.validate()){ //form을 담아야함
                    Get.off(HomePage());
                  }

                }
            ),

          ],
        ),
      ),



      ),
    );
  }
}