import 'package:flutter/material.dart';

// 두개의 값을 전달받아 처리한다
// 1. 이미지이름 / 2. 타이틀
class RecipeListItem extends StatelessWidget {
  // 클래스 멤버속성 만들기
  final String imageName;
  final String title;
  // 클래스 호출할 때 생성 시 이 값을 전달해줌

  
  // 멤버 속성을 셋팅하도록 생성자 메서드를 변경한다
  // key값 전달은 기본이므로 포함하여 변경한다

  const RecipeListItem(this.imageName, this.title,{Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top:20,),
      child: Column(
        children: [
          // 이미지 : 멤버변수 imageName 사용
          // 비율 설정위젯 - AspectRatio
          AspectRatio(
            aspectRatio: 2/1,
          // 사각 잘라내기 위젯 -  ClipRRect
            child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
                  "assets/images/$imageName.jpeg",
                  // 이미지 확장 채우기
                  fit: BoxFit.cover,
            ),
         ),        
         
         ),
          SizedBox(height: 10,),
            //텍스트 : 멤버변수 title 사용
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                
              ),
            ),
      
          // 레시피 소개글
        Text(
          "당신은 당신이 직접 만든 $title를 가지고 계신가요 만약 없다면 여기 쉬운 $title 레시피를 보고 따라해보세요",
          style: TextStyle(
            color: const Color.fromARGB(255, 114, 114, 114),
            fontSize: 14
          ),
         
        )
        ],
      ),
    );
   
  }
}