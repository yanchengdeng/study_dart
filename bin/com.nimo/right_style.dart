
import 'dart:math';

///具体参考 [https://github.com/dart-lang/dart_style]


void main(){
  error(null);

  var optionalThing = OptionalThing();
  // userIf()

  var numbers = [1,1.2,2];
  var ints = numbers.whereType<int>();

  var stuff = <dynamic>[1,2];
  var ints1 = List<int>.from(stuff);
  print(ints1);

  var reipcoals = stuff.map<double>((n) => 1/n);
  print(reipcoals);


}

void error(String? msg){
  print(msg ?? "msg is null");
}
class OptionalThing{
  bool? isEnabled;
}

///倾向于使用  ??
void userIf(OptionalThing? optionalThing){
  //good
  if(optionalThing?.isEnabled ?? false){

  }
  //bad
  if(optionalThing?.isEnabled == false){

  }
}

class Circle {
  double radius;
  double area;
  double circumference;
  Circle(this.radius)
      : area = pi * radius * radius,
        circumference = pi * 2.0 * radius;


}

