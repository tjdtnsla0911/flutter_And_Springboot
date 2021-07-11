import 'package:flutter/material.dart';

class CustomTextFormFild extends StatelessWidget {

  final String hint;

  const CustomTextFormFild({@required this.hint});

  @override
  Widget build(BuildContext context) {
    return
      Padding(padding: EdgeInsets.symmetric(vertical: 5), //아래위로 나눌땐 symmetric이나음
      child:

      TextFormField(

      decoration: InputDecoration(//첨에보일때
          hintText: "$hint", //이렇게 넣는게 좋죠.. Null 안정성
          enabledBorder: OutlineInputBorder(
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