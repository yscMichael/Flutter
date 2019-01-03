void main()
{
   //一、变量与常量
   //1.1、变量
   var a;
   print('a = $a');//变量默认值为null

   a = 10;  //变量赋值
   print('a = $a');

   a = "Dart";//使用Var定义的变量可以赋予不同类型的值
   print('a = $a');

   //1.2、变量
   int b;
   print('b = $b');//显示声明类型的变量，默认值也为null

   b = 20;
   print('b = $b');
   //b = "Dart";//显示声明类型的变量，只能赋相应类型的数值，否则报错

   //1.3、常量
   final c = 30; //使用final修饰的变量必须赋值，否则报错成;而且必须在声明的时候赋值，只能赋值一次，否则也报错
   print('c = $c');

   //1.4、常量
   //常量:指的是用const声明的变量,必须进行赋值，不能为null，否则报错
   const d = 40;
   print('d = $d');
   //d = 50;//另外，不能二次赋值

   //二、数据类型
   //2.1、num数值型
   //num表示数值型，它有两个子类int和double
   //因此,num既可以接收int值，也可以接收double值
   num e = 10;
   print('e = $e');
   e = 12.5;
   print('e = $e');

   //其它常用属性和Api
   //2.2、int类型
   //判断是否是偶数
   int f = -50;
   print(f.isEven);
   //判断是否是奇数
   print(f.isOdd);
   //取绝对值
   print(f.abs());
   //转浮点型
   print(f.toDouble());

   //2.3、double类型
   double g = 10.5;
   print(g.toInt());
   print(g.round());//四舍五入，返回整形
   print(g.floor());//不大于g的最大整数
   print(g.ceil());//不小于b的最小整数


   //2.4、String字符串
   //可以使用单引号和双引号创建字符串
   String str1 = 'Dart';
   print(str1);
   String str2 = "Dart";
   print(str2);
   //使用三个单引号或者三个双引号创建多行字符
  String str3 = '''Dart
                hello''';
  print(str3);
  String str4 = """Dart
                          hello""";
  print(str4);

  //使用r创建原始字符串
  String str5 = r'Hello \n Dart';//\n不会被转义
  print(str5);
  //不使用r的话,\n会被转义
  String str6 = 'Hello \nDart';
  print(str6);

  //插值表达式，类似于OC的NSLog
  int tempA = 10;
  int tempB = 20;
  print("tempA = ${tempA}");
  print("tempB = $tempB");
  print("tempA + tempB = ${tempA + tempB}");

  //常用属性和方法
  String str7 = "1?2?3?4?5?6?7";
  print(str7.length);
  print(str7.isEmpty);
  print(str7.contains('1'));
  print(str7.substring(0,3));//包含首尾
  print(str7.startsWith('12'));
  print(str7.split("?"));

  //2.5、布尔型
  //布尔型只有true和false两个值

  //2.6、数组 List分为可变数组和不可变数组
  //1、可变数组一
  //注意这里添加元素的时候，可以添加基本类型数组，但是一定要类型一致
  //就是说:原数组都是数字，如果向数组中添加字符串就会报错。
  var list = ['1','2','3'];
  print(list);
  list.add('4');
  print(list);

  //2、可变数组二(这个添加的是动态类型、也就是说不受类型限制，随意添加)
  var listTwo = new List();
  listTwo.add("1");
  listTwo.add(1);
  listTwo.add(10.5);
  print(listTwo);

  //3、不可变数组
  var listThree = const [1,2,3,4];
  //listThree.add(5);//不会报错，但是运行会出错
  print(listThree);

  //常用属性和方法
  var listFour =  [1,2,3,4];
  //获取元素个数
  print(listFour.length);
  //判断是否为空
  print(listFour.isEmpty);
  print(listFour.isNotEmpty);
  //添加元素
  listFour.add(5);
  print(listFour);
  listFour.insert(0, 10);
  print(listFour);
  //删除元素
  listFour.removeAt(0);
  print(listFour);
  //listFour.clear();//清空元素
  //print(listFour);
  //修改元素
  listFour[0] = 10;
  print(listFour);
  //查询元素
  print(listFour[0]);
  //查询元素坐在下标
  print(listFour.indexOf(2));
  print(listFour.indexOf(100));//查不到就返回-1
  //排序低级
  print(listFour);
  listFour.sort();//int 类型直接是从小到大
  print(listFour);
  //排序高级
  var listFive = ["1","8","3","7","5"];
  listFive.sort((a,b) => int.parse(a).compareTo(int.parse(b)));
  print(listFive);
  //从当前数组获取一个新的数组
  print(listFive.sublist(0,2));
  //遍历数组(需要提供操作方法)
   void printElement(element) => print(element);
   listFive.forEach(printElement);

   //2.7、Map字典
   //1、可变字典一
   var mapOne = {"first":"java","second":"OC","third":"C++"};
   print(mapOne);


   //其它Api介绍与实践
   //添加元素、没有这个key自动添加否则相当于是修改
   mapOne['fourth'] = 'Swift';
   print(mapOne);
   //修改元素
   mapOne['first'] = '修改';
   print(mapOne);
   //获取元素个数
   print(mapOne.length);
   //判断元素是否为空
   print(mapOne.isEmpty);
   print(mapOne.isNotEmpty);
   //删除元素,找到指定的key即可
   mapOne.remove('fourth');
   print(mapOne);
   //清空map
   //mapOne.clear();
   //print(mapOne);
   //查询某个key对应的Value值
   print(mapOne['third']);
   //获取map所有的key
   print(mapOne.keys);
   //获取map所有的value
   print(mapOne.values);
   //判断是否包含某个key
   print(mapOne.containsKey('first'));
   print(mapOne.containsValue('java'));
   //遍历字典
   void printKeyValue(String key, String value) => print("${key} is ${value}");
   mapOne.forEach(printKeyValue);
   //void forEach(void f(K key, V value));
   //2、可变字典二
   var mapTwo = new Map();
   mapTwo['111'] = 'first';
   mapTwo['222'] = 'second';
   print(mapTwo);
   //3、不可变字典
   var mapThree = const {'111':'first','222':'second'};
   //mapThree['333'] = 'third';//不会报错，但是运行的时候会报错
   //print(mapThree);


   //三、运算符
   //运算符除了熟知的加减乘除,这里只对一些特殊的进行讲解
   //"/":结果为浮点型，不同于OC语言
   int firstNum = 13;
   int secondNum = 4;
   print(firstNum/secondNum);//为小数

   //"～/"为求整
   print(firstNum~/secondNum);

   //"%"为求余
  print(firstNum%secondNum);

  //四、关系运算符
  // ==,!=,>,<,>=,<=

  //五、逻辑运算符
  // !,&&,||

  //六、赋值运算符
  // =
  //??=：表示左侧为空时，进行赋值，否则不进行赋值
  int thirdNum;
  thirdNum ??= 5;
  print(thirdNum);

  int fourthNum = 10;
  fourthNum ??= 100;
  print(fourthNum);

  //七、条件运算符
  //三目运算符
  //??运算符 : 如果前面的值为null,则使用后面的值，否则使用前面的值

  //八、控制流
  // if语句
  // for语句
  // for...in语句
  // while语句
  // do...while
  // break和continue
  // switch语句支持continue
  String language = "Java";
  switch(language)
  {
    Test:
    case "Dart":
      print("Dart-------");
      break;
    case "Java":
      print("Java-------");
      //break;
      continue Test;//遇到下一个Break才会跳出去
    case "C++":
      print("C++-------");
      break;
    default:
      print("None-------");
  }
  //assert语句
  //String assertString;
  //assert(assertString != null);

  //九、方法
  // 返回类型 方法名(参数1,参数2,...){
  // 方法体...
  // return 返回值
  // }

  //方法也是对象，并且有具体类型Function
  //返回值类型、参数类型都可以省略，默认return null
  //方法都有返回值，如果没有指定返回类型
  void printPerson(String name,int age){
    print("name = $name,age = $age");
    //return null;
  }
  //等价于
   printPersonSecond(name,age){
     print("name = $name,age = $age");
     //return null;
   }

   //=>语法，适用于方法体只有一个表达式情况
   printPersonThird(String name,int age) => print("name = $name,age = $age");

  //可选参数
  //可选命名参数，调用时使用名称传值
  //也就是说调用时，可选参数传值的时候，必须加上形参, 并且按照类型一一对应(形参位置可以互换)
  printPersonFourth(String name,{int age,String gender}){
    print("name = $name,age = $age,gender = $gender");
  }
  //方法调用
  //printPersonFourth("李四",age: 20);
  //printPersonFourth("李四",age:20,gender:'男');
  //printPersonFourth("李四",gender: '男');
  //printPersonFourth("李四",gender: '男',age: 20);//这样也是对的

  //可选位置参数
  //这里不用传递形参名称，但是传递的数据类型，按照顺序要一一对应
   printPersonFive(String name,[int age,String gender]){
     print("name = $name,age = $age,gender = $gender");
   }
   printPersonFive('张三',20);
   //print('张三','男');//这是错误的

   //备注:
   //如果存在具体参数，可选参数声明，必须在具体参数后面
   //可选参数可以使用默认值，前提是你不传值
   printPersonSix(String name,{int age = 30,String gender = 'Female'}){
      print("name = $name,age = $age,gender = $gender");
   }
   //printPersonSix('王五',age:50,gender:'男');//以当前传值为主
   printPersonSix('王五');//以当前传值为主

   //十、方法对象
   //简单理解，方法就是可以当作一个对象，按照对象的使用方法进行使用
   //方法赋值给其它变量,但是这个变量类型是Function
   void printHello(){
     print("Hello");
   }
   Function func = printHello;
   func();
   //方法作为参数传递
   String times(str){
     return str*3;
   }

   List listTimes(List list,String t(str)){
      for(var index = 0;index < list.length;index ++)
      {
        list[index] = t(list[index]);
      }
      return list;
   }
   //使用
   var list2 = ["h","e","l","p","o"];
   print(listTimes(list2, times));

   //十一、匿名方法
   //声明如下:
   //(参数1,参数2,...){
  // 方法体...
  // return 返回值
  // }
  //匿名方法赋值
  var funcTemp = (str){
      print("hello---$str");
  };
  funcTemp(30);
  //匿名方法作为参数
  var result = listTimes(list2, (str){return str*3;});
  print(result);
  //十二、闭包
  //闭包是一个方法(对象)、类似于OC的Block
  //闭包定义在其它方法内部
  //闭包能够访问外部方法的局部变量，并持有其状态
  //例题
  aTemp(){
    int count = 0;
    return (){
        print(count ++);
    };
  }
  //闭包可以访问局部变量count
  var funcThree = aTemp();
  funcThree();
  funcThree();
  funcThree();
  funcThree();
}

/*备注：
 *1、
 * 数字转字符:123.toString();
 * 字符转数字:int.parse("100");
 *
 * 2、
 * 传递一个方法作为参数，这个方法包含一个参数
 * this指的是当前数组
 * void forEach(void f(E element))
 * {
     for (E element in this) f(element);
   }
 *
 */