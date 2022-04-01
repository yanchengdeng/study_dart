///为了解决多线程带来的并发问题，Dart 使用 isolate 替代线程
///所有的 Dart 代码均运行在一个 isolate 中。
///每一个 isolate 有它自己的堆内存以确保其状态不被其它 isolate 访问。
///

library todo ;
//自定 元数据注解

class Todo{
  final String who;
  final String what;
  const Todo( this.who, this.what);
}
