void main(List<String> arguments){

  print(arguments);


//调用函数写法
  var isMax = isMaxThanTen(5);
  print("is max than ten = $isMax");

  //当函数体里只包含一个表达式 则可以简单如下：
  bool isMaxThanTen2(int number) => number >10;
  //也可以写成
  var ismAX2 = (number) => "number is $number";
  print(ismAX2(3));

  // 参数：必要参数 和可选参数 义函数时，使用 {参数1, 参数2, …} 来指定命名参数
  //使用required 标识是否是必要参数
  enableFlags(bold: true);


  //匿名函数
  [9,4,2].forEach((element) {print("element is $element");});
  [9,4,2].forEach((item) =>print("另一种写法：element is $item"));

//关注下此类写法  makeAdder(4) 是一个函数 （2）为参数
  print("makeAdder is = ${makeAdder(4)(2)}");

  var num = 5;
  print("num is = ${num += 6}");

  print("isMax ${isMaxThanTen2(5)? 100 : 1000}");

}

bool isMaxThanTen(int number){
  return number >10;
}

void enableFlags({required bool? bold,bool? hide}){
  print("object--$bold----$hide");
}

//返回函数
Function makeAdder(int addBy){
  return (int i) => i+ addBy;
}