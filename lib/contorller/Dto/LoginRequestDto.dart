
class LoginReqDto{
  final String? username;
  final String? password;

  //ここでは、以前と違い選択コンストラクタではなく、普通のコンストラクタを使う。
  //なぜなら、値を与えるべきですから。(戻り値がNULLでない)
  LoginReqDto(this.username, this.password);

  Map<String, dynamic> toJson() => {
    "username" : username,
    "password" : password,

  };


}