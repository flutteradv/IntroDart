void main(){
  A c = C("Flutter");
  (c as B).hi();
  (c as A).hello();
  (c as B).goodbye();
  (c as C).timeStamp();
}
class TimeStamp{
  DateTime now = DateTime.now();
  void timeStamp(){
    print(now);
  }
}
class A{
  void hello(){
    print("Hello from A");
  }
}

class B{
  String b;
  B(this.b);
  void hi(){
    print("Hi from B");
  }
  void goodbye(){
    print("bye bye $b");
  }
}

class C with TimeStamp implements A,B{
  C(this.b);
  @override
  void hello() {
    print("Hello from C");
  }

  @override
  void hi() {
    print("Hi from C");
  }

  @override
  String b;

  @override
  void goodbye() {
    print("bye bye from C $b");
  }

}