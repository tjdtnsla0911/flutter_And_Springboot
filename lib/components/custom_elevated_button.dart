import 'package:flutter/material.dart';

class CustomEleavatedButton extends StatelessWidget {
  final String text;

  const CustomEleavatedButton({@required this.text}) ;
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
        print('ElevatedButtonClick시 발동');
      },
      child: Text('$text'),
    );
  }
}
