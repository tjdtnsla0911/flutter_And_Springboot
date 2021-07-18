import 'package:flutter_blog/domain/user/jwt.dart';
import 'package:flutter_blog/domain/user/user_repository.dart';
import 'package:get/get.dart';
class UserController extends GetxController{
    //final은 타입추론이라 사실 UserReposiory나 RxBool안적아도된다.
    final UserRepository _userRepository = UserRepository();
    final RxBool isLogin = false.obs; //Rx타입이란 관찰 가능한변수, UI가 관찰하고잇다.
    


    //이토큰을 휴대폰에 저장할수도있고, 우리는 걍 간단하게 파일에 저장하겟다
    //쉐어드프로페어런스에 저장하면 앱이 꺼져도 로그인이 되잇다
    //파일에 담으면 단점이 앱이꺼지면 로그인도 꺼짐
    Future<String> login(String username, String password) async{

      print('UserController에_userRepository =$_userRepository');
      String token = await _userRepository.login(username, password);

      if(token != "-1"){
        isLogin.value = true; //RxBool은 .value를 넣어야변경가능
        jwtToken = token; // Token 저장
        print("jwtToken = $jwtToken");
      }

      return token;
    }

}