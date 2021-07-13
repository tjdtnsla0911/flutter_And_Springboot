
import 'package:flutter/material.dart';

double getScreenWidth(BuildContext context){
  return  MediaQuery.of(context).size.width; //길이 잴수있다
}

double getDrawerWidth(BuildContext context){
  return getScreenWidth(context) * 0.6;
}