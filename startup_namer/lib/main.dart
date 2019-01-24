import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'demo/chapter01.dart';
import 'demo/chapter02.dart';
import 'demo/chapter03.dart';
import 'demo/chapter04.dart';
import 'demo/chapter05.dart';

//void main() => runApp(MyApp());
void main(){
//  runApp(
//      Center(
//            child: Container(
//               color: Colors.green,
//               child: Text("Flutter CheatSheet."),
//               //child: Text("Flutter CheatSheet."),
//            ),
//      )
//  );

    runApp(
      MaterialApp(
        title: 'Shopping App',
        //home: MyScaffold(),
        //home: TutorialHome(),
        //home: TestButton(),
        //home: TestCalculator(),
        //home: ShoppingList(
        //  products: <Product>[
        //    Product(name: 'Eggs'),
        //    Product(name: 'Flour'),
        //    Product(name: 'Chocolate chips'),
        //  ],
        //),
        home: Center(
            child: Container(
                //color: Colors.green[100],
                //color: Color.fromARGB(255, 66, 165, 245),
                //alignment: AlignmentDirectional(0.0, 0.0),

                decoration: BoxDecoration(
                  color: Colors.purple,
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.cyan, Colors.purple, Colors.lightGreenAccent],
                      begin: Alignment.centerRight,
                      end:Alignment.centerLeft,
                      stops: [0.3, 0.5, 0.6, 0.7],
                      //end: Alignment(0.8, 0.0),
                      tileMode: TileMode.clamp,
                  ),
                ),

                child: FlutterLogo(
                  size: 200,
                ),
//                child: Container(
//                  color: Colors.green,
//                  //child: Text("Flutter"),
////                  constraints: BoxConstraints.expand(
////                    width: 350,
////                    height: 400
////                  ),
//                //margin: EdgeInsets.all(20.0),
//                //  margin: EdgeInsets.symmetric(
//                //    vertical: 20,
//                //    horizontal: 50,
//                //  ),
//
//                //margin: EdgeInsets.fromLTRB(20, 30, 40, 50),
//
//                margin: EdgeInsets.only(
//                  left: 20.0,
//                  bottom: 40.0,
//                  top: 50.0
//                ),
//                padding: EdgeInsets.all(10.0),
//                child: Text('Flutter Cheatsheet'),
//                transform: Matrix4.rotationZ(0.5),
//                //constraints: BoxConstraints.expand(),
////                  constraints: BoxConstraints(
////                    maxHeight: 300,
////                    maxWidth: 200,
////                    minWidth: 150,
////                    minHeight: 150
////                  ),
//                ),
//                child: Text(
//                       "Flutter CheatSheet.",
//                       style: TextStyle(
//                         fontSize: 40,
//                       ),
//                ),
            ),
        ),
      )
    );
}

//第一个App
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: RandomWords(),
//      title: 'Welcome to Flutter',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Welcome to Flutter'),
//        ),
//        body: Center(
//          //child: Text('Hello World'),
//          //child: Text(wordPair.asPascalCase),
//          child: RandomWords(),
//        ),
//      ),
    );
  }
}


class RandomWords extends StatefulWidget{
  @override
  createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  //1、参数
  final _suggestions = <WordPair>[];//单词列表所有数据
  final _saved = Set<WordPair>();//保存某些单词数据
  final _biggerFont = const TextStyle(fontSize: 18.0);//改变字体大小

  @override
  //2、构建主界面UI
  Widget build(BuildContext context) {
    //final wordPair = WordPair.random();
    //return Text(wordPair.asPascalCase);
    return Scaffold(
      appBar: AppBar(
        title: Text('Startup Name Generator'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.list),
              onPressed: _pushSaved
          )
        ],
      ),
      body: _buildSuggestions(),
    );
  }

    //3、构建cell
    Widget _buildRow(WordPair pair){
      final alreadySaved = _saved.contains(pair);//判断当前行的单词是否被选中
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
        trailing: Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
        onTap: (){
          setState(() {//会更新状态
            if (alreadySaved){
              _saved.remove(pair);
            }else{
              _saved.add(pair);
            }
          });
        },
      );
    }

    //4、构建ListView(类似于tableView)
    Widget _buildSuggestions(){
      return ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemBuilder: (context ,i){
            if(i.isOdd) return Divider();//奇数行返回分割线
            final index = i ~/ 2;
            if(index >= _suggestions.length){
                _suggestions.addAll(generateWordPairs().take(10));
            }
            return _buildRow(_suggestions[index]);
          },
      );
    }

    //5、进入到下一个界面
    void _pushSaved(){
        //导航管理器栈
        Navigator.of(context).push(
            //新建路由界面
            MaterialPageRoute(builder: (context){
              //构建cell的UI(这里返回一个变量)
              final tiles = _saved.map((pair){
                                  return ListTile(title: Text(pair.asPascalCase,style: _biggerFont));
                            });
              //将上述变量转变成数组
              final divided = ListTile.divideTiles(context: context,tiles: tiles).toList();
              //返回整个界面
              return Scaffold(
                appBar: AppBar(
                  title: Text('Saved Suggestions'),
                ),
                body: ListView(children: divided),
              );
            })
        );
    }
}


//笔记:
//1、Scaffold 是 Material library 中提供的一个widget,
// 它提供了默认的导航栏、标题和包含主屏幕widget树的body属性。widget树可以很复杂。