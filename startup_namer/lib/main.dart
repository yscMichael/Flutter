import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'demo/chapter01.dart';
import 'demo/chapter02.dart';
import 'demo/chapter03.dart';
import 'demo/chapter04.dart';
import 'demo/chapter05.dart';
import 'demo/Container/Container.dart';
import 'demo/BoxDecoration/BoxDecoration.dart';
import 'demo/Row_Column/Row_Column.dart';

//void main() => runApp(MyApp());
void main(){
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

        //1、Container使用
        //home: Container_Widget(),
        //2、BoxDecoration使用
        //home: BoxDecoration_Widget(),
        //3、Row/Column使用
        home: Row_Column_Widget(),
      )
    );
}


//一、Container
class Container_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //return Color_Property_Colors();
    //return Color_Property_Color();
    //return Child_Property();
    //return Alignment_Property();
    //return Alignment_FractionalOffset();
    //return Alignment_AlignmentDirectional();
    //return Constraints_Property_NoChild();
    //return Constraints_Property_HasChild();
    //return Constraints_Property_HasChild_AllScreen();
    //return Margin_Property_EdgeInsets_all();
    //return Margin_Property_EdgeInsets_symmetric();
    //return Margin_Property_EdgeInsets_fromLTRB();
    //return Margin_Property_EdgeInsets_only();
    //return Padding_Property_EdgeInsets_all();
    return Transform_Property();
  }
}

//二、BoxDecoration
class BoxDecoration_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //return BoxDecoration_Colors_Widget();
    //return Gradient_Property_default_Widget();
    //return Gradient_Property_beginAndEnd_Widget();
    //return TileMode_Clamp_Property_Widget();
    //return TileMode_Mirror_Property_Widget();
    //return TileMode_Repeated_Property_Widget();
    //return Stops_Property_Widget();
    //return RadialGradient_Widget();
    //return Image_Property_Widget();
    //return centerSlice_Property_Widget();
    //return ColorFilter_Property_Widget();
    //return fit_Property_Widget();
    //return repeat_Property_Widget();
    //return matchTextDirection_Property_Widget();
    //return Border_All_Property_Widget();
    //return Border_Border_Property_Widget();
    //return Border_BorderDirectional_Property_Widget();
    //return borderRadius_Property_Widget();
    //return BorderRadius_horizontal_Widget();
    //return BorderRadius_vertical_Widget();
    //return BorderRadius_only_Widget();
    //return Radius_elliptical_Widget();
    //return boxShadow_colorAndoffset_Property_Widget();
    //return boxShadow_blurRadius_Property_Widget();
    //return boxShadow_spreadRadius_Property_Widget();
    //return boxShadow_multipleAndBoxShadow_Property_Widget();
    return shape_Property_Widget();
  }
}

//三、Row/Column
class Row_Column_Widget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //return Row_Text_Widget();
    //return Column_Text_Widget();
    //return CrossAxisAlignment_row_Propery_Widget();
    //return CrossAxisAlignment_column_Propery_Widget();
    //return CrossAxisAlignment_withOutbaseline_Widget();
    //return CrossAxisAlignment_withbaseline_Widget();
    //return TextDirection_row_center_rtl_Propery();
    //return TextDirection_row_center_ltr_Propery();
    //return TextDirection_Row_start_ltr_Propery();
    //return TextDirection_Row_start_rtl_Propery();
    return VerticalDirection_row_start_down_Widget();
    //return VerticalDirection_row_start_up_Widget();
    //return MainAxisAlignment_Propery_Widget();
    //return MainAxisSize_max_row_Propery_Widget();
    //return MainAxisSize_max_Column_Propery_Widget();
    //return MainAxisSize_min_row_Propery_Widget();
    //return MainAxisSize_min_Column_Propery_Widget();
  }
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