import 'dart:io';


///异步使用
///Completer 是用于两种底层代码的：新的异步原子操作和集成没有使用 Future 的异步代码。大部分的代码都应该使用 async/await 或者 Future.then()，
///这样代码更加清晰并且异常处理更加容易

Future<void> main() async{


  var future = await fileContainsBear("test.txt");
  print(future);

  var future1 = await fileContainsBear1("test.txt");
  print(future1);
// print(await createOrderMessage());


}

Future<String> createOrderMessage() async{
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is
// more complex and slow.
Future.delayed(
  const Duration(seconds: 2),
      () => 'Large Latte',
);

//写法一
Future<String> fileContainsBear(String path){
  return File(path).readAsString();
}

//写法二
Future<String> fileContainsBear1(String path) async{
  var values = await File(path).readAsString();
  return values;
}




