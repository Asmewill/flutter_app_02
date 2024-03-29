import 'package:flutter/material.dart';
class Product{
  final  String title;
  final String description;
  Product(this.title, this.description);
}



//一个无限滚动的ListView
class testApp04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Welcome to Flutter",
      theme: new ThemeData(
          primaryColor: Colors.blueGrey
      ),
      home: new ProductList(
      products:  new List.generate(20, (i){
          return new Product("商品$i", "这是一个商品详情$i");
        })
      ),

    );
  }
}

class ProductList extends StatelessWidget{
  final List<Product> products;
  ProductList({Key key,this.products}):super(key:key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
           title: new Text("商品列表"),
        ),
        body: new ListView.builder(
            itemCount: products.length,
            itemBuilder: (context ,index){
                return new ListTile(
                  title: new Text(products[index].title),
                  onTap: (){
                  Navigator.push(
                        context,
                        new MaterialPageRoute(builder: (context)=>
                              new ProductDetail(product:products[index])
                        ));
                  },
                );
             }),
    );
  }
}

class ProductDetail extends StatelessWidget{
  final Product product;

  ProductDetail({Key key,this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
  
    return new Scaffold(
        appBar: new AppBar(
          title: new  Text("${product.title}"),
        ),
        body: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Text("${product.description}"),
        ),
    );
  }

}










