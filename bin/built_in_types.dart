import 'dart:ffi';

void main(List<String> arguments) {
  var  number = 42;
  print('Hello world!$number');
  setName(null);



   var foo = const[1];
   foo = [43];
   print("foo---is$foo");


   //int  和double都是num 子类
  num i = 4;
  num ii = 4.2e5;

  //字符串与数字之间转换
  //string-->int
  var one = int.parse('10');
  assert(one == 10);
  //string-->double
  var onePointTwo = double.parse('1.2');
  // assert(1.2 == onePointTwo);//成立
  // assert('1.2' == onePointTwo);//不成立

  var piAsString = 3.14159.toStringAsFixed(2);//小数点保留几位
  assert(piAsString == '3.14');


  //三个引号代表创建多行字符串
  var s1 = '''
  you can create
  multi-line string like one.
  ''';
  print(s1);
  var s2 = """这也是一个多行字符串。""";
  print(s2);

  //r 作为字符串创建字符串（即不会被做任何处理（比如转义）的字符串）
  var s = r'in raw string ,not event \n gets special treatment';
  print(s);


  // Dart 2.3中引入扩展操作符（...） 和空感知扩展操作符（?...） ,他们提供一种将多个元素插入集合的简介方法
  var list = [1,3,4,null];
  var promoActive = list.length == 4;
  var listAll = [0,...list,if(promoActive) 2];
  print(listAll);

  listAll.forEach((element) {
    print(element);
  });


  //set集合
  var halogens = {'spring','summer','agust','winner'};
 var halogensAppend = halogens.map((e) => e+".end");
 print(halogensAppend);
 //map 集合
  var map = {"hhh" :"one","ddd" :"two"};
  map.forEach((key, value) {
    print("key is $key,value is $value");
  });












}

void setName(String? object ){
  print("欢迎：$object");
}

