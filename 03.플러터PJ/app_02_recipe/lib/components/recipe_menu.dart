// 황금레시피 페이지 메뉴 클래스 ////

import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      child: Row(
        children: [
          // 박스형 메뉴 생성 메서드호출 
          _buildMenuItem(Icons.food_bank_rounded, 'All'),
          Spacer(),
          _buildMenuItem(Icons.emoji_food_beverage_rounded, 'Coffee'),
          Spacer(),
          _buildMenuItem(Icons.fastfood_rounded, 'Burger'),
          Spacer(),
          _buildMenuItem(Icons.local_pizza_rounded, 'Pizza'),
      
        ],
      ),
    );
  }
}


// 메뉴구성 위젯을 리턴하는 메서드
// 하위 메서드이므로 언더바로 시작하는 이름사용
// 각 메뉴별 변경요소 전달값으로 받아서 처리
// 전달변수: 1. 아이콘 / 2. 텍스트
Widget _buildMenuItem(IconData mIcon, String text){
  // 박스를 구성하는 Container 위젯
  // 박스는 크기를 가진다. 따라서 width,height 속성이 필수
  return Container(
    // 가로,세로 크기 지정
    width: 70,
    height: 80,
    // 박스 세부옵션 설정 - decoration
    decoration: BoxDecoration(
      // 보더속성
      border: Border.all(color: Color.fromARGB(31, 57, 57, 57)),
      // 보더 라운드 속성
      borderRadius: BorderRadius.circular(7),
      // 그라데이션 속성
      gradient: LinearGradient(
        // 그라데이션 색상지정
        colors: [            
          Color.fromARGB(255, 255, 255, 255),
          Color.fromARGB(255, 236, 236, 236),
        ],
        // 각 색상이 어디까지 변화할 지 지정(0.0 ~ 1.0)
        stops: [0.7, 1.0],
        // 그라데이션
        begin: Alignment.topCenter,
        end:Alignment.bottomCenter,
      )
      
    ),
    // 3. 박스 하위요소 속성: 단일요소 => child
  child: Column(
      // 박스 세로정렬 중앙
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      // 3-1. 아이콘
      Icon(
        mIcon, 
        color: Colors.amber[500],
        size: 30,),
        // 내가 원하는 크기만큼 사이간격주는 방법
        //SizedBox(width,height)
      SizedBox(height: 5,),
      // 3-2. 글자 
      Text(
        text,
        style: TextStyle(color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: 15,
        // fontFamily: 'PatuaOne',
        ),
      )
    ],
  ),
  );


}