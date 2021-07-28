import 'package:flutter_blog/contorller/Dto/LoginRequestDto.dart';
import 'package:flutter_blog/domain/post/post_provider.dart';
import 'package:flutter_blog/util/convert_utf8.dart';

import 'package:get/get.dart';

class PostRepository{
  final PostProvider _postProvider = PostProvider();
  //jsのPomiseと同じ機能だと思います（非同期通信ですが、
  // 結果が来るまで待たせる (async , awiat)
  Future<void> findAll()  async {
    //これで、タイプ変更し、値を伝えられる。
    print('post_repository의 findall');

    Response response = await _postProvider.findAll();
    //JWt 토큰받기
    print('###########################');
    print('post_Response of login response  =$response');
    print('post_Response of response.body = ${response.body}');
    print('post_Response of response.headers = ${response.headers}');
    print('###########################');
    dynamic body = response.body.toString();
    print('문자변환된거 = ${convertUtf8ToObject(body)}');
    print('끝');

  }
}