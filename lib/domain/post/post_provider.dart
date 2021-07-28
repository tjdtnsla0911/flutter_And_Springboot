import 'package:flutter_blog/domain/user/jwt.dart';
import 'package:get/get.dart';

const host = "http://192.168.0.2:8080"; //localhost하면 안된다. 가상에뮬레이터라

class PostProvider extends GetConnect {
  //Preomise(데이터와의약속)
  //여기서header를 안보내면 요청이안됨

  Future<Response> findAll() {
    print('post_Provier의 findAll에옴');
    return get('$host/post',headers: {'Authorization' : jwtToken ?? ''});
  }

}