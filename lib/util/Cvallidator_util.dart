import 'package:validators/validators.dart';


Function validatePassword(){

     return (String? value){ //타입 안적으니 타입을모른다

    print('Password of value : $value');


    if(value!.isEmpty){ //영어인지아닌지 감 지, 바꿔말하면 한글감지
      print('왓다');
      return "패스워드에는 공백이 들어갈수는 없습니다";
    }else if(!isAlpha(value)){
      print('value.isEmpty에옴');
      return '패스워드에는 한글이들어갈수없습니다';
    }else if(value.length > 12){
      return "Password 길이는 12자이내입니다(보안성 ㅍㅌㅊ?)";
    }else{
      return null;
    }
  };
}


Function validateusername(){
  print('valud에옴222');

  return (String? value){ //타입 안적으니 타입을모른다
    print('Password of value : $value');


    if(value!.isEmpty){ //영어인지아닌지 감 지, 바꿔말하면 한글감지
      print('왓다');
      return "유저이름 한글이 들어갈 수 없습니다";
    }else if(value.length > 12){
      return "유저이름은 최대 12자이내입니다(보안성 ㅍㅌㅊ?)";
    }else if(value.length < 4){
      return "유저이름은 최소 4자이상입니다.";
    }else{
      return null;
    }

  };
}


Function validateUserEmail(){

  return (String? value){ //타입 안적으니 타입을모른다
    print('Password of value : $value');


    if(value!.isEmpty){ //영어인지아닌지 감 지, 바꿔말하면 한글감지
      print('왓다');
      return "이메일에는 한글이 들어갈 수 없습니다";

    }else if(!isEmail(value)){ //is
      return "이메일 형식이아닙니다";

    }else{
      return null;
    }

  };
}


Function validateTitle(){

  return (String? value){ //타입 안적으니 타입을모른다
    print('Password of value : $value');

    if(value!.isEmpty){ //영어인지아닌지 감 지, 바꿔말하면 한글감지
      print('왓다');
      return "타이틀에는 공백이 들어갈수 없습니다.";

    }else if(value.length > 30){ //is
      return "제목의 길이 30자를 초과할수없습니다";

    }else{
      return null;
    }
  };
}

Function validateContent(){

  return (String? value){ //타입 안적으니 타입을모른다
    print('Password of value : $value');


    if(value!.isEmpty){ //영어인지아닌지 감 지, 바꿔말하면 한글감지
      print('왓다');
      return "내용은 공백이 들어갈 수 없습니다.";

    }else if(value.length > 500){ //is
      return "내용은 길이는 최대 500자 까지입니다.";

    }else{
      return null;
    }

  };
}