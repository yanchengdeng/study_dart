/// 库的使用
import 'package:html/parser.dart' show parse; //你只想使用代码库中的一部分，你可以有选择地导入代码库
import 'package:html/parser.dart' hide parseFragment; //导入库 除了 parseFragment
import 'package:html/dom.dart' as dom; //你导入的两个代码库有冲突的标识符，你可以为其中一个指定前缀
import 'package:json_annotation/json_annotation.dart'; //其他库使用方式
import 'com.nimo/clazz.dart'; //代码引用

//使用 deferred as 关键字来标识需要延时加载的代码库：
// import 'package:greetings/func.dart' deferred as hello;

import 'com.nimo/io_cpu.dart';

void main() {
  // var element =  HtmlElement.created();
  // element.innerHtml = "hello world";
  // print(element);

  var document =
      parse('<body>Hello world! <a href="www.html5rocks.com">HTML5 rocks!');
  print(document.outerHtml);

  var person = Employee.fromJson({"name": "niko", "age": "3"});
  print(person.toString());
  doSomething();

  // greet();
}

//使用 async 和 await 的代码是异步的，但是看起来有点像同步代码
//必须在带有 async 关键字的 异步函数 中使用 await：
// Future<void> greet() async {
//   //使用 await 关键字暂停代码执行直到库加载完成
//   await hello.loadLibrary();
//   hello.printGreeting();
// }

//处理Stream
// 如果想从 Stream 中获取值两种方式：
//1.使用 async 关键字和一个 异步循环（使用 await for 关键字标识）。
// await for (varOrType identifier in expression) {
// Executes each time the stream emits a value.
// }
//使用 Stream API

//使用自定义元数据注解
@Todo("nimo", "clean classroom")
void doSomething() {
  print("do something");
}
