/// 库的使用
import 'package:html/parser.dart' show parse;//你只想使用代码库中的一部分，你可以有选择地导入代码库
import 'package:html/dom.dart' as dom;//你导入的两个代码库有冲突的标识符，你可以为其中一个指定前缀
import 'package:json_annotation/json_annotation.dart';//其他库使用方式
import 'com.nimo/clazz.dart';//代码引用

void main(){
 // var element =  HtmlElement.created();
 // element.innerHtml = "hello world";
 // print(element);

 var document = parse(
     '<body>Hello world! <a href="www.html5rocks.com">HTML5 rocks!');
 print(document.outerHtml);

 var person = Employee.fromJson({"name" :"niko","age":"3"});
 print(person.toString());
}