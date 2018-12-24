void main()
{
//  for(int i = 0; i < 5; i++)
//  {
//      print('hello ${i + 1}');
//  }

//  int lineCount;
//  assert(lineCount != null);


//  字符串和数字之间转换
// String -> int
//  var one = int.parse('1');
//  print(one);

// String -> double
//  var onePointOne = double.parse('1.1');
//  print(onePointOne);

// int -> String
//  String oneAsString = 1.toString();
//  print(oneAsString);

// double -> String
//  String piAsString = 3.14159.toStringAsFixed(2);
//  print(piAsString);

//  字符串之间的连接用的是"+"

//  Bool值的使用
//  JavaScript中会正常打印，这里不会正常打印的
//  var name = 'Bob';
//  if (name) {
//    // Prints in JavaScript, not in Dart.
//    print('You have a name!');
//  }

//  当前代码也会报错，Dart语言只认识true
//  if (1) {
//    print('JS prints this line.');
//  } else {
//    print('Dart in production mode prints this line.');
//    // However, in checked mode, if (1) throws an
//    // exception because 1 is not boolean.
//  }
//  所在在Dart语言中应该显示的使用布尔值，而不是应用以上策略

//  var constantList = const [1, 2, 3];
//  //constantList[1] = 1; // Uncommenting this causes an error.
//  constantList = [];
//  print(constantList);//这个是没有错的，相当于重新指向了


//  Runes:打印表情符
//  var clapping = '\u{1f44f}';
//  print(clapping);
//  print(clapping.codeUnits);
//  print(clapping.runes.toList());
//
//  Runes input = new Runes(
//      '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
//  print(new String.fromCharCodes(input));

// 反转字符串
//  var input = "Music \u{1d11e} for the win"; // Music 𝄞 for the win
//  print(input.split('').reversed.join()); // niw eht rof

//  标识符

//  方法
//  这个 => expr 语法是 { return expr; } 形式的缩写
//  注意： 在箭头 (=>) 和冒号 (;) 之间只能使用一个 表达式 – 不能使用 语句。
//  例如：你不能使用 if statement，但是可以 使用条件表达式 conditional expression(比如说三木运算符)。

// 方法传参数的时候，可选命名参数
//  void doStuff({List<int> list = const [1, 2, 3], Map<String, String> gifts = const {'first': 'paper'}})
//  {
//    print('list:  $list');
//    print('gifts: $gifts');
//  }
//  doStuff();

// B包的使用

//  Function makeAdder(num addBy) {
//    return (num i) => addBy + i;
//  }
//
//  // Create a function that adds 2.
//  var add2 = makeAdder(2);
//  //等价于(num i) => 2 + i
//
//  // Create a function that adds 4.
//  var add4 = makeAdder(4);
//
//  print(add2(3));
//  print(add4(3));
//  assert(add2(3) == 5);
//  assert(add4(3) == 7);

//测试函数是否相等
//测试顶级方法、静态函数和实例函数 相等的示例：

//  var x;
//
//  // Comparing top-level functions.
//  x = foo;
//  assert(foo == x);
//  print("foo == x is ${foo == x}");
//
//  // Comparing static methods.
//  x = A.bar;
//  //assert(A.bar == x);
//  print("A.bar == x is ${A.bar == x}");
//
//  // Comparing instance methods.
//  var v = new A(); // Instance #1 of A
//  var w = new A(); // Instance #2 of A
//  var y = w;
//  x = w.baz;
//
//  // These closures refer to the same instance (#2),
//  // so they're equal.
//  assert(y.baz == x);
//
//  // These closures refer to different instances,
//  // so they're unequal.
//  assert(v.baz != w.baz);

//类型判定操作符
//as   类型转换
//is   如果对象是指定的类型返回 True
//is!  如果对象是指定的类型返回 False

//级联操作符

//  var callbacks = [];
//  for (var i = 0; i < 2; i++)
//  {
//    callbacks.add(  () => print(i)  );
//  }
//  print(callbacks);
  //这段代码进行解释：(c)相当于是一个void noName(c),其中c相当于是数组内的元素
  //这个元素其实指向的就是一个方法、直接可以调用c()
  //说白了forEach里面的函数就是为了拿到数组里面的元素，然后接着执行
  //这里面因为里面的元素就是一个
//  callbacks.forEach(  (c) => c()    );

//  void forEach(void f(E element))
// {
//    for (E element in this) f(element);
//  }


//  异常
//  throw new FormatException('Expected at least 1 section');
//  throw 'Out of llamas!';

//  Catch---捕获异常
//  final foo = '';
//
//  void misbehave() {
//    try {
//      foo = "You can't change a final variable's value.";
//    } catch (e) {
//      print('misbehave() partially handled ${e.runtimeType}.');
//      rethrow; // Allow callers to see the exception.
//    }
//  }
//
//  try {
//    misbehave();
//  } catch (e) {
//    print('main() finished handling ${e.runtimeType}.');
//  }

  //相关用法查看:
  //try { //执行的代码，其中可能有异常。一旦发现异常，则立即跳到catch执行。否则不会执行catch里面的内容 }

  //catch { //除非try里面执行代码发生了异常，否则这里的代码不会执行 }

  //finally { //不管什么情况都会执行，包括try catch 里面用了return ,可以理解为只要执行了try或者catch，就一定会执行 finally }

  //Classes
//  var point = new Point();
//  point.x = 4;          // Use the setter method for x.
//  print(point.x);
//  print('point.x = ${point.x}');
//  assert(point.x == 4); // Use the getter method for x.
//  assert(point.y == null); // Values default to null.

  //继承时，子类和父类的构造函数执行顺序
//  var emp = new Employee.fromJson({});
//  // Prints:
//  // in Person
//  // in Employee
//  if (emp is Person)
//  {
//    // Type check
//    emp.firstName = 'Bob';
//    print(emp.firstName);
//  }
//  (emp as Person).firstName = 'Bob';

//  print(greetBob(new Person('kathy')));
//  print(greetBob(new Imposter()));

  //泛型相当于是不指定具体参数类型，这样可以减少重复代码，保证代码质量
  //可以理解为OC中的id

//  assert(int.parse('42', radix: 16) == 66);
//  print(int.parse('42', radix: 16));
//  print(int.parse('42'));

//  var greetingTemplate = 'Hello, NAME!';
//  var greeting = greetingTemplate
//      .replaceAll(new RegExp('NAME'), 'Bob');
//
//  assert(greeting !=
//      greetingTemplate); // greetingTemplate didn't change.
//  print(greeting !=
//      greetingTemplate);
//  print('greetingTemplate = $greetingTemplate');
//  print('greeting = $greeting');


  var sb = new StringBuffer();
  sb..write('Use a StringBuffer for ')
    ..writeAll(['efficient', 'string', 'creation'], ' ')
    ..write('.');

  var fullString = sb.toString();

  assert(fullString ==
      'Use a StringBuffer for efficient string creation.');
  print('fullString = $fullString');
}

class Person
{
  // In the interface, but visible only in this library.
  final _name;
  // Not in the interface, since this is a constructor.
  Person(this._name);
  // In the interface.
  String greet(who) => 'Hello, $who. I am $_name.';
}

// An implementation of the Person interface.
class Imposter implements Person
{
  // We have to define this, but we don't use it.
  //它的意思是不使用也得声明
  final _name = "123";
  String greet(who) => 'Hi $who. Do you know who I am $_name?';
}

greetBob(Person person) => person.greet('bob');

//class Person
//{
//  String firstName;
//
//  Person.fromJson(Map data)
//  {
//    print('in Person');
//  }
//}
//
//class Employee extends Person {
//  // Person does not have a default constructor;
//  // you must call super.fromJson(data).
//  Employee.fromJson(Map data) : super.fromJson(data) {
//    print('in Employee');
//  }
////  Employee() : super.fromJson(findDefaultData());
//}
//
//class Point {
//  num x = 5;
//  num y;
//}
//
//foo() {}               // A top-level function
//
//class A {
//  static void bar() {} // A static method
//  void baz() {}        // An instance method
//}


