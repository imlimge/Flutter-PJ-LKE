void main(List<String> args) {
  //main 메서드를 가장 먼저 호출함


  // 다트언어는 변수형을 자동으로 인식하는 선언이 있음 -> 타입추론
  // 1. var
  var myHome = "내집";
  print(myHome);
  // var는 처음에 할당한 값의 형으로 재할당해야 함
  // myHome = 22; -> 에러남
  myHome = "22";
  print(myHome);

  // 2. dynamic
  // -> var와 비슷하지만 나중에 재할당 시 처음 할당한 값과 
  // 다른형의 값을 넣어도 괜찮다
  dynamic myId ="aaa123";
  print("나의 아이디는 $myId");

  myId = 32432;

  print("너의 아이디는 $myId");

  // [ 문자형 출력방법 : '${코드}' 또는 '$변수' ]


 

  // 다트 언어는 변수의 형을 선언함이 기본이다
  // 1. 숫자형: 
  // int - 정수 / double - 실수 / num - 정수,실수
  int number1 = 2023;
  // number1 = 3.2;
  // number1 = "하하"; -> 처음 선언한 형으로만 할당가능
  print(number1);

  // 숫자형도 정수형과 실수형을 철저히 구분함
  double number2 = 7;
  number2 = 3.14;
  print(number2);

  num number3 = 100;
  number3 = 7.34;
  print(number3);



  // 2. 문자형 : String
  String name = "가나다";
  // name = 122;
  // print("나는 " + name + "입니다");
  print("나는 $name입니다");


 // 3. 불린형 : bool
 bool isTrue = true;
//  print(isTrue);
 print("진짜인가? 가짜인가? $isTrue");

// 4. 콜렉션 : 묶음데이터
// List / Set / Map
// 4-1. List 형 - 배열과 유사함
List<String> we = ['너','나','우리'];
print(we[2]+'는 모두 친구입니다');
print(we.length);

// 4-2. Set형 - 순서가 없고 중복되지 않는 데이터집합
// -> 순서가 없으므로 호출해서 사용하고자 할 때는 List형으로 변환 후 사용 -> Set형변수.toList()


// Set<int> evens = {2,4,6,8,10,6};
// Set<dynamic> evens = {2,4,6,8,10,'짝수'};
var evens = {6,2,4,8,10,6,'짝수'};

print(evens);
// 리스트형으로 변환
print(evens.toList());
// 변환후에는 순번으로 출력가능
print(evens.toList()[3]);



// 4-3. Map형 - 데이터에 라벨링된 데이터 집합(객체와 유사)
Map<String,String> actor = {"이름":"나나나", "나이":"22"};
print(actor);


// [ 다트의 형변환 (Casting)]
// -> 특정 데이터형에서 다른 형으로 변환하는 것을
// 흔히 캐스팅이라고도 함
// 1. 일반적인 형변환 : 변수형.parse(대상변수)
// 2. 메서드 체인방식 : 변수.to형()
// ->변수.toString()-> 문자형변환
// ->변수.toList()-> 컬랙션 List 형변환


// 주의: 형변환이 안될것 같으면 변환하지 않는다
// 예) 문자형 문자를 숫자로 변경 못 함 


String stNum = "777";
print('문자형 숫자: $stNum');

// 문자형 숫자를 캐스팅하여 숫자로 계산하기
num result = 111 + int.parse(stNum);
print("111 + 777 = $result");



}