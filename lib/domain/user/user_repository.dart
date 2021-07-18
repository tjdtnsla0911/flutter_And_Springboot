import 'package:flutter_blog/contorller/Dto/LoginRequestDto.dart';
import 'package:flutter_blog/domain/user/user_provider.dart';
import 'package:get/get.dart';

class UserRepository{
  final UserProvider _userProvider = UserProvider();
  //jsのPomiseと同じ機能だと思います（非同期通信ですが、
  // 結果が来るまで待たせる (async , awiat)
  Future<String> login(String username, String password)  async {
    //これで、タイプ変更し、値を伝えられる。
    LoginReqDto loginReqDto = LoginReqDto(username, password);
    print(loginReqDto.toString());
    Response response = await _userProvider.login(loginReqDto.toJson());
    //JWt 토큰받기
    print('=========================');
    print('login response  =$response');
    print('response.body = ${response.body}');
    print('=======================');
    dynamic headers = response.headers;
    if(headers['authorization'] == null){
      return "-1"; //null은 리턴할수없기 떄문에 -1을 리턴하게한다.
    }else {
      print('headers = $headers');
      print('response.header = ${response.headers}');
      String token = headers["authorization"] ?? 'Not Token';
      print('print = ${token}');
      return token;
    }

  }
}