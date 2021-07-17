import 'package:flutter_blog/contorller/Dto/LoginRequestDto.dart';
import 'package:flutter_blog/domain/user/user_provider.dart';
import 'package:get/get.dart';

class UserRepository{
  final UserProvider _userProvider = UserProvider();
  //jsのPomiseと同じ機能だと思います（非同期通信ですが、
  // 結果が来るまで待つ (async , awiat)
  Future<void> login(String username, String password)  async {
    //これで、タイプ変更し、値を伝えられる。
    LoginReqDto loginReqDto = LoginReqDto(username, password);

    print('=====Start JWT');
    print(loginReqDto.toString());
    print('======');
    Response response = await _userProvider.login(loginReqDto.toJson());
    //JWt 토큰받기
    print('result = respone = ${response}');
  }
}