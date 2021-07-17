import 'package:flutter/material.dart';

class CustomTextArea extends StatelessWidget {

  final String? hint;
  final funvalidator; //함수임
  final String? value;

  const CustomTextArea({@required this.hint, @required this.funvalidator,@required this.value});

  @override
  Widget build(BuildContext context) {
    return
      Padding(padding: EdgeInsets.symmetric(vertical: 8), //아래위로 나눌땐 symmetric이나음 간격 늘어짐 위아래
         child:
        TextFormField(
          initialValue: value ?? "여기도 아무값도 안들어왓음",

          validator: funvalidator,

          maxLines: 10, // Textarea처럼 열길이 길게해줌

          decoration: InputDecoration(//첨에보일때
              hintText: "Enter $hint", //이렇게 넣는게 좋죠.. Null 안정성
              enabledBorder: OutlineInputBorder( //요놈이 맨처음 바로보였을때 깍아주는놈
                borderRadius: BorderRadius.circular(10),
              ),

              focusedBorder: OutlineInputBorder( //클릭하때
                borderRadius: BorderRadius.circular(10),
              ),

              errorBorder: OutlineInputBorder( //엘일때
                borderRadius: BorderRadius.circular(10),
              ),

              focusedErrorBorder: OutlineInputBorder( //에러일때
                borderRadius: BorderRadius.circular(10),
              )

          ),
        ),
      );
  }
}