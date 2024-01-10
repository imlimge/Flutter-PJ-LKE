// 오른족에서 들어오는 사이드 박스 드로워 클래스

import 'package:flutter/material.dart';

class ProfileDrawer extends StatelessWidget {
  const ProfileDrawer({Key? key}): super(key:key);

  // 빌드 재정의 
  @override
  Widget build(BuildContext context) {
    // 사이드 박스는 Container로 만들어 준다

    return Container(
      // 가로크기
      width: 200,
      // 높이값 double.infinity는 높이 채우기
      height: double.infinity,
      // 박스 배경색
      color: Colors.blue,
      // 메뉴 넣기
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 50),
            // close
            Row(
              // 오른쪽 끝으로 정렬 : 수평방향이니까 Row에서는 mainAxis
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // 아이콘의 버튼화 - > inkWell 
                InkWell(
                  // 탭 이벤트 시 드로어 닫기
                  onTap: () {
                    // debugPrint('닫기');
                    // 이동클래스인 Navigator.pop() 메서드 사용
                    Navigator.pop(context);
                    // 내용으로 context만 쓰면 현재상태로 되돌림
                    // 열었던 drawer가 닫힌다
                  },
                  child:
                    Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                ),
                // 아이콘 
                // 간격
                SizedBox(width: 5),
                // 텍스트
              ],
            ),
            SizedBox(height: 20),
            // Home메뉴
            Row(
              children: [
                // 아이콘 
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                // 간격
                SizedBox(width: 5),
                // 텍스트
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
              ],
            ),
            SizedBox(height: 20),
            // store 메뉴
            Row(
              children: [
                // 아이콘 
                Icon(
                  Icons.store,
                  color: Colors.white,
                ),
                // 간격
                SizedBox(width: 5),
                // 텍스트
                Text(
                  'Store',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
              ],
            ),
            SizedBox(height: 20),
            // Community메뉴
            Row(
              children: [
                // 아이콘 
                Icon(
                  Icons.sensor_occupied_outlined,
                  color: Colors.white,
                ),
                // 간격
                SizedBox(width: 5),
                // 텍스트
                Text(
                  'Community',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
              ],
            ),
            SizedBox(height: 20),
            // Development 메뉴
            Row(
              children: [
                // 아이콘 
                Icon(
                  Icons.developer_mode,
                  color: Colors.white,
                ),
                // 간격
                SizedBox(width: 5),
                // 텍스트
                Text(
                  'Development',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  ),
              ],
            ),
            
          ]),
      ),
      
    );
  }
}