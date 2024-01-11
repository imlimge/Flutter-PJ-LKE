// 로그인 페이지
import 'package:app_04_login/components/custom_form.dart';
import 'package:flutter/material.dart';

// 사이즈 프리셋팅
import 'package:app_04_login/size.dart';

// 로고 위젯
import 'package:app_04_login/components/logo.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 리스트뷰를 써야만 스크롤을 사용하여 
      // 하단 입력 키보드가 올라올 때 대비할 수 있다
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            SizedBox(height: xlargeGap),
            // 로고보이기
            Logo('Login'),
            SizedBox(height: largeGap), 
            // 입력폼 양식 위젯(폼 요소 위젯 포함)
            CustomForm(),
          ],
        ),
      ),
    );
  }
}