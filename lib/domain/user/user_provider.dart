import 'package:get/get.dart';

const host = "http://192.168.0.2:8080"; //localhost하면 안된다. 가상에뮬레이터라


//getX가가지고있는 GetConnect로 한다
//가공 => json => Dart
class UserProvider extends GetConnect{
  //Future가 아니면 비동기가아니라 시간걸려서 에러터짐
  //Future가 Promise같은 느낌임 js에
  Future<Response> login(Map data) {

    print('user_provider의 login 의 data = $data');

    return post("$host/login",data);

  }


}