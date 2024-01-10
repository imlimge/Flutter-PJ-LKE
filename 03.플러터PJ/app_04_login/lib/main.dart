import 'package:flutter/material.dart';
//홈페이지
import 'package:app_04_login/pages/home_page.dart';
//로그인
import 'package:app_04_login/pages/login_page.dart';


void main() {
  runApp(const MyApp());
}

/*
  [ 로그인 앱 전체구성 : lib하위 ]
  - 메인 출발 (추가 사이즈지정 : size.dart)
  - 페이지구성 : 2개
    pages / home_page.dart : 홈페이지
    pages / login_page.dart : 로그인 페이지
  - 컴포넌트 구성 : 3개
    components / logo.dart : svg로고 
    components / custom_form.dart : Form 위젯
    components / custom_text_form_field.dart : Form요소 위젯
*/


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,

    // [ 테마 설정 : 공통버튼테마 ]
    theme: ThemeData(
      // 텍스트 버튼 테마 설정하기
      textButtonTheme: TextButtonThemeData(
        // 버튼 스타일 속성 지정
        style: TextButton.styleFrom(
          // 배경색
          backgroundColor: Colors.black,
          // 글자색
          foregroundColor: Colors.white,
          // 그림자 효과 -> 둥근 모서리
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          // 버튼 최소 크기 설정
          minimumSize: Size(400, 60),
        ),
      ),
    ),

    // 라우터 속성 셋업하기
    // 첫페이지 라우터설정
    initialRoute: '/login',
    // 기본 셋팅법
    // routes:{'/라우터주소' : (context) => 클래스생성자()}
    routes: {
      '/home':(context) => HomePage(),
      '/login':(context) => LoginPage(),
    },
    

    // 3. 라우터 호출 이동법: 서로 다른 페이지에서 호출
    // Navigator.pushNamed(context, '/라우터주소')

    // 라우터를 사용할 경우 home 속성을 사용하지 않는다
    // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
