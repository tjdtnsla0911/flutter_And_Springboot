
import 'dart:convert'; //JsonEncode

dynamic convertUtf8ToObject(dynamic body){

  print('body = $body');
  String responseBody = jsonEncode(body); // json data로 변경
  print('responseBody = 나와라@@@@@@@@@@');
  dynamic convertBody = jsonDecode(utf8.decode(responseBody.codeUnits));
  print('convertBody = $convertBody');

  return convertBody;
}