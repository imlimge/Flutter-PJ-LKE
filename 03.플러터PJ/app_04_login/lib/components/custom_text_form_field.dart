// 입력폼 양식 요소 위젯: 글자 + 입력폼 요소

import 'package:app_04_login/size.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  // 텍스트를 입력받아 사용함
  final String text;
  const CustomTextFormField(this.text, {Key? key}):super(key: key);

  // 빌드 재정의
  @override
  Widget build(BuildContext context) {
    // 필드설명과 입력양식폼은 수직으로 배치됨
    return Column(
      // 크로스축 정렬변경(왼쪽정렬:start)
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. 필드설명
        Text(text),
        SizedBox(height: smallGap),
        // 2. 텍스트 입력폼 양식 -> TextFormField()
        TextFormField(
          // 2-1. 유효성검사 셋팅 (출력메시지)
          // !(느낌표)는 "절대 null아님"의 의미(컴파일러에 알림)
          validator: (value) => value!.isEmpty
          ? "please enter some text" // 비었으면 메시지 출력
          : null, // null은 메시지 없음

          // 2-2. 비밀번호인 경우 글자*** 처리
          obscureText: text == "Password" ? true:false,

          // 2-3. 입력폼 구성하기
          decoration: InputDecoration(
            // 2-3-1. 입력내용 힌트 텍스트
            hintText: 'Enter $text',

            // 2-3-2. 기본 TextFormField 디자인
            enabledBorder: OutlineInputBorder(
              // 테두리 디자인 설정하기
              borderRadius: BorderRadius.circular(20),
            ),

            
            // 터치 시 / 에러 시  / 에러 후 터치 시 상태에 대한 기본디자인은 
            // 밑줄형으로 되어 있으므로 이 디자인을 덮어써야
            // 내가 원하는 디자인을 유지할 수 있다. 따라서 필수 셋팅임


            // 2-3-3. 터치 시 (포커스가 갈 때) TextFormField 디자인
            focusedBorder: OutlineInputBorder(
              // 테두리 디자인 설정하기
              borderRadius: BorderRadius.circular(20),
              // 테두리 색과 테두리 두께 변경하기
              borderSide: BorderSide(
                color: Colors.blue,
                width: 3,
              ),
            ),

            // 2-3-4. 에러 발생 시 TextFormField 디자인
            errorBorder: OutlineInputBorder(
              // 테두리 디자인 설정하기
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.red,
                width: 5,
              ),
            ),

            // 2-3-5. 에러 발생 후 터치 시 TextFormField 디자인
            focusedErrorBorder: OutlineInputBorder(
              // 테두리 디자인 설정하기
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.purple,
                width: 10,
              ),
            ),

          ),

        ),
      ],
    );
  }

}
