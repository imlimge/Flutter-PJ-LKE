// 로그인 페이지
import 'package:flutter/material.dart';

// 로고 위젯
import 'package:app_04_login/components/logo.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 리스트뷰를 써야만 스크롤을 사용하여 
      // 하단 입력 키보드가 올라올 때 대비할 수 있다
      body: ListView(
        children: [
          SizedBox(height: 20),
          // 로고보이기
          Logo('Login'),
          // 임시 이통버튼
          TextButton(
            // 대상을 누를 때 발생
            onPressed: (){
              // debugPrint('눌림');
              // 라우터 이동 Navigator
              // pushNamed() 메서드로
              Navigator.pushNamed(context, '/home');

            }, 
            child: Text('Go to Home')),
        ],
      ),
    );
  }
}