import 'package:flutter/material.dart';
//购物车

//产品
//类似于构造方法
class Product{
  const Product({this.name});//固定写法
  final String name;
}

//block
typedef void CartChangedCallback(Product product, bool inCart);

//列表Cell(这里采用自定义cell的方法)
class ShoppingListItem extends StatelessWidget{
  ShoppingListItem({Product product, this.inCart, this.onCartChanged})
      : product = product,
        super(key: ObjectKey(product));//这里是

  //属性
  final Product product;
  final bool inCart;
  final CartChangedCallback onCartChanged;

  //变换颜色
  Color _getColor(BuildContext context){
    return inCart ? Colors.black54 : Theme.of(context).primaryColor;
  }

  //变换风格
  TextStyle _getTextStyle(BuildContext context){
    if(!inCart) return null;
    return TextStyle(
      color: Colors.black54,
      decoration: TextDecoration.lineThrough,
    );
  }

  //显示控件
  @override
  Widget build(BuildContext context) {
    //系统Cell
    return ListTile(
       onTap: (){
         onCartChanged(product, !inCart);
       },
      leading: CircleAvatar(
        backgroundColor: _getColor(context),
        child: Text(product.name[0]),
      ),
      title: Text(product.name, style: _getTextStyle(context)),
    );
  }
}

class ShoppingList extends StatefulWidget{
  ShoppingList({Key key, this.products}) : super(key: key);

  final List<Product> products;

  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList>{
  Set<Product> _shoppingCart = Set<Product>();

  void _handleCartChanged(Product product, bool inCart){
    setState(() {
      if(inCart){
        _shoppingCart.add(product);
      }
      else{
        _shoppingCart.remove(product);
      }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        children: widget.products.map((Product product){
            return ShoppingListItem(
              product: product,
              inCart: _shoppingCart.contains(product),
              onCartChanged: _handleCartChanged,
            );
        }).toList(),
      ),
    );
  }
}