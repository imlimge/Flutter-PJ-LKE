import 'package:app_05_cart/components/cart_detail.dart';
import 'package:app_05_cart/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 디버그 배너 숨김
       debugShowCheckedModeBanner: false,
       // 앱 테마 설정
       theme: theme(),
       // 전체 바디에 해당하는 home속성
       home: CartPage(),
    );
  }
} ////// MyApp 클래스 //////


// 페이지를 구성하는 클래스 ////////
// CartPage 클래스 /////
class CartPage extends StatelessWidget {
  const CartPage({super.key});


  @override
  Widget build(BuildContext context) {
    // 스캐폴드 위젯 안에 구성함
    return Scaffold(
      // 1. 앱바
      appBar: _buildCartAppBar(),
      // 2. 본문출력파트 body
      // Column 위젯이 하단이 잘릴 경우
      // 스크롤이 생기는 ListView 위젯으로 대체한다
      // body: Column(
      body: ListView(
        children: [
          // 카트 페이지 상세구성 클래스
          CartDetail(),
          
        ]),

    );
  } //// build 메서드 ////

  // 앱바를 구성하는 메서드 : _buildCartAppBar()
  AppBar _buildCartAppBar(){
    return AppBar(
      // 왼쪽 시작부분은 leading -> 이끄는 곳
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: (){},
        ),
        // 실제 기능을 넣는 곳 : actions
        // 기본정렬 오른쪽 끝에서부터 나옴 (카트모양 아이콘)
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.shopping_cart),
          ),
          SizedBox(width: 16), // 오른쪽 공간
        ],
    );
  } /// _buildCartAppBar 메서드 ////

} ///// CartPage 클래스 /////


