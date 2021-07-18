import 'package:flutter/material.dart';

class CustomTextFormFild extends StatelessWidget {

  final String hint;
  final funvalidator; //함수임
  final String? value;
  final controller;

  const CustomTextFormFild({ required this.hint,  required this.funvalidator,this.value, this.controller});

  @override
  Widget build(BuildContext context) {
    print('빌드에옴');
    print('value = $value');

    // TextEditingController? t = controller; //?가있으면 널이되도 된다.

    return
      Padding(padding: EdgeInsets.symmetric(vertical: 5), //아래위로 나눌땐 symmetric이나음
      child:
        TextFormField(
          controller: controller , //둘다 null이여야함
          initialValue: value ?? null, //둘다 null이여야함

          validator: funvalidator,

          obscureText: hint == "Password" ? true : false, //요놈이 비밀번호칠때 **** 식으로바꿔줌

          decoration: InputDecoration(//첨에보일때
            hintText: "Enter $hint",
            enabledBorder: OutlineInputBorder( //요놈이 맨처음 바로보였을때 깍아주는놈
              borderRadius: BorderRadius.circular(20),
            ),

            focusedBorder: OutlineInputBorder( //클릭하때
              borderRadius: BorderRadius.circular(20),
            ),

            errorBorder: OutlineInputBorder( //엘일때
              borderRadius: BorderRadius.circular(20),
            ),

            focusedErrorBorder: OutlineInputBorder( //에러일때
              borderRadius: BorderRadius.circular(20),
            )

      ),
    ),

    );
  }
}