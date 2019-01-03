//这里是导入Material UI组件库
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//main提供程序入口、runApp启动应用(参数是Widget)、MyApp代笔当前Flutter应用
void main() => runApp(TestFlatButtonWIdget());

//第一个App
class MyFirstApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter Title',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

//Text 组件相关属性
class TestTextWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text'),
        ),
        body: Center(
            child: Text(
              'Test Text Widget Test Text Widget Test Text Widget Test Text Widget Test Text Widget Test Text Widget',
              textAlign: TextAlign.end,//对齐方式
              textDirection:TextDirection.ltr,
              maxLines: 5,//最大行数
              overflow: TextOverflow.ellipsis,//文字溢出展示样式设置;clip:直接切断,ellipsis:省略号,fade:上下渐变效果
              style: TextStyle(//可以设置其它特殊属性
                fontSize: 25.0,
                color: Color.fromARGB(255, 255, 150, 150),
                decoration:TextDecoration.underline,
                decorationStyle:TextDecorationStyle.solid
              ),
            ),
        ),
      ),
    );
  }
}

//Text rich组件相关属性
class TestTextRichWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text.rich Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text.rich'),
        ),
        body: Center(
          child: Text.rich(
              TextSpan(
                text: 'Hello ',
                children: <TextSpan>[
                  TextSpan(
                    text: ' beautiful',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.red
                    )
                  ),
                  TextSpan(
                    text: ' world',
                    style: TextStyle(
                        fontWeight:FontWeight.bold,
                        color:Colors.blue
                    )
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}

//RaisedButton使用
class TestRaisedButtonWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RaisedButton使用'),
        ),
        body: Center(
          child: RaisedButton(
              child: Text('RaisedButton'),
              onPressed: (){
                print('点击RaisedButtonRaisedButton');
              },
          ),
        ),
      ),
    );
  }
}

//FlatButton使用
class TestFlatButtonWIdget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FlatButton使用'),
        ),
        body: Center(
          child: FlatButton(
              onPressed: (){
                print('点击FlatButton---');
              },
              child: Text('我是FlatButton')),
        ),
      ),
    );
  }
}

//ButtonBar

//MyApp是当前应用的根，也是一个Widget
//StatelessWidget是无状态的Widget
class MyApp extends StatelessWidget {
  @override
  //widget都会包含一个build方法，用于构建UI界面
  Widget build(BuildContext context) {
    //MaterialApp是Material提供的Flutter App框架，用于设置应用的名称、主题、语言、首页以及路由列表
    //MaterialApp也是一个Widget
    return MaterialApp(
      title: 'Flutter Demo',
      //主题配置
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      //注册路由表
      routes:{
        "new_page":(context)=>NewRoute(),
        "tip_widgets":(context)=>EchoRoute("内容固定")
      } ,
      //Flutter应用首页
      home: MyHomePage(title: 'Flutter Demo Home Page++'),
    );
  }
}

//StatefulWidget是有状态的Widget
//StatelessWidget和StatefulWidget的区别
//1、StatefulWidget可以拥有状态，这些状态是生命周期是可以改变的;而StatelessWidget不可以改变
//2、State fulWidget拥有两个类:
//   StatefulWidget类，本身是不变的
//   一个是State类，在生命周期中是可能发生改变的
//
//这里MyHomePage的状态类是_MyHomePageState
//build方法放在了_MyHomePageState而不是MyHomePage

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//_MyHomePageState的build方法
//疑问：怎么确定是_MyHomePageState的build方法？？？
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //点击按钮调用这个方法
  void _incrementCounter() {
    //这个方法能够先保证执行_counter++,再调用下面的build方法以达到重新渲染UI的目的
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  //以下是构建UI界面
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    //Scaffold是Material库中提供的一个widget,提供默认的导航栏、标题、主屏幕widget树
    //的body属性
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:----',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text("open new route"),
              textColor: Colors.blue,
              onPressed: (){
                Navigator.pushNamed(context, "new_page");
                //跳转到新路由界面
                //Navigator.push(context, new MaterialPageRoute(builder: (context){
                //    return new NewRoute();
                //}));
              },
            ),
            FlatButton(
              child: Text("open Echo route"),
              textColor: Colors.green,
              onPressed: (){
                Navigator.pushNamed(context, "tip_widgets");
              },
            ),
            //生成随机数Widget
            RandomWordsWidget()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


//新建一个路由(测试跳转界面)
class NewRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Center(
        child: Text("This is new route"),
      ),
    );
  }
}

//路由传递参数
class EchoRoute extends StatelessWidget{
  EchoRoute(this.tip);
  final String tip;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Echo route"),
      ),
      body: Center(
        //回显tip内容
        child: Text(tip),
      ),
    );
  }
}

//导入第三方库
class RandomWordsWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //生成随机字符串
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(0.8),
      child: new Text(wordPair.toString()),
    );
  }
}




