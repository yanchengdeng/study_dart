// import 'package:json_annotation/json_annotation.dart';
void main(){


//这种写法 可以熟悉熟悉  类似 kotlin  lammda表达式
  var callBacks = [];
  for(var i = 0 ;i<5;i++){
    callBacks.add(() => print(i));
  }
  callBacks.forEach((element) {element();});


  var person = Employee.fromJson({});
  person.name = "dimo";
  print("person.name is ${person.name}");

  //扩展函数  和kotlin 一致
  print('hello_world'.padLeft(12));


  Color.values.forEach((element) {
    print("enum is $element---index=${element.index}");
  });

  Color.values.forEach((element) => print(element.index));


}
class Person{
  String? name;
  
  Person.fromJson(Map data){
    print('in person = $data');
  }

  //如果调用了对象上不存在的方法或实例变量将会触发 noSuchMethod 方法，你可以重写 noSuchMethod 方法来追踪和记录这一行为
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: '
        '${invocation.memberName}');
  }

  
}

class Employee extends Person{
  Employee.fromJson(Map data) : super.fromJson(data){
    print('in Employee is :$data');
  }
  // _ 下划线开头成员或是函数属于私有成员   是dart 内置特性
  void  _privateAge(int age) => age +1 ;
  void  privateAge(int age) => age +1 ;

}


enum Color{
  RED,
  GREEN,
  BLOCK
}

mixin Musical{
  bool canPlayPiano = false;
  bool canCompose = false;
  void enterMe(){
    if(canPlayPiano){
      print("play piano");
    }else{
      print("can compose");
    }
  }
}


//泛型
abstract class Cache<T>{
  var datas = <String,T>{};
  void addCache(String key,T value);
  T? getCache(String key);
}


class StringCache extends Cache<String>{
  @override
  void addCache(String key, String value) {
    datas.addAll({key :value});
  }

  @override
  String? getCache(String key) {
    return datas.entries.where((element) => element.key == key).first.value;
  }

}

class BaseClass{

}


class OneImpBaseClass extends BaseClass{}
class TwoImpBaseClass extends BaseClass{}

//限制性泛型
class Foo<T extends BaseClass>{
  
}
