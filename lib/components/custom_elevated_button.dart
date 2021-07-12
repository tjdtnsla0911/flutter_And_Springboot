import 'package:flutter/material.dart';
import 'package:flutter_blog/pages/user/login_page.dart';
import 'package:get/get.dart';
class CustomEleavatedButton extends StatelessWidget {
  final String text;
  final funpageroute;

  //@required 를쓰므로 무조껀받는다
  const CustomEleavatedButton({@required this.text, @required this.funpageroute}) ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(double.infinity,50), //굵어짐

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25), //동그랗게만들어줌
        ),

      ),
      onPressed: (){

        funpageroute();

      },
      child: Text('$text'),
    );
  }
}
