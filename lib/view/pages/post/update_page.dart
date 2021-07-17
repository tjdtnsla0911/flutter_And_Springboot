import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_blog/util/Cvallidator_util.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/components/custom_textarea.dart';
import 'package:get/get.dart';

class UpdatePage extends StatelessWidget {
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
              value: "제목값",
            ),

            CustomTextArea(
              hint: 'Content',
              funvalidator: validateContent(),
              value: "개백수!"*20,
            ),

            CustomEleavatedButton(

                text: '글 수정하기',
                funpageroute:(){
                  print('funpageroute 클릭');
                  if(_formKey.currentState!.validate()){ //form을 담아야함
                    //Get.to로하니까 뒤로하면 바로 전페이지로가버림 홈페이지로가야하는데.
                    //homepage -> detailpage -> updatepage ->
                    // Get.off(DetailPage(444)); //파라미터가져감
                    //글수정시 뒤로가기로해보자
                    //젤좋은건 page가 있으면 이동할때 덮어씌우면 댐
                    Get.back(); // 이전페이지로 돌아가는거라 수정안될수도있지만 상태관리 GETX의 OBS쓰면댐
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