import 'package:flutter/material.dart';
import 'package:basic_shoping_cart/product.dart';
void main() => runApp(mycart());

class mycart extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: mycartapp(),
          )

        ),
      ),
    );
  }
}
class mycartapp extends StatefulWidget {
  const mycartapp({Key? key}) : super(key: key);

  @override
  State<mycartapp> createState() => _mycartappState();
}

class _mycartappState extends State<mycartapp> {
  int currentPoduct = 0;
  List<Product> ProductList =[
    Product(ProductName: 'Window Desktop',
        ProductCartIcon: Icon(Icons.laptop_chromebook,
          color: Colors.orange.shade100,),
        ProductIcon: Icon(Icons.laptop_chromebook,size: 180,color: Colors.white,)
    ),
    Product(ProductName: 'Apple Iphone 11',
        ProductCartIcon: Icon(Icons.phone_android,
          color: Colors.orange.shade100,),
        ProductIcon: Icon(Icons.phone_android,size: 180,color: Colors.white,)
    ),
    Product(ProductName: 'Apple Ipad',
        ProductCartIcon: Icon(Icons.laptop_mac,
          color: Colors.orange.shade100,),
        ProductIcon: Icon(Icons.laptop_mac,size: 180,color: Colors.white,)
    ),
    Product(ProductName: 'Antivirus',
        ProductCartIcon: Icon(Icons.security,
          color: Colors.orange.shade100,),
        ProductIcon: Icon(Icons.security,size: 180,color: Colors.white,)
    ),

  ];
  List<Icon> ShoppingCart = [

  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: ShoppingCart,
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProductList[currentPoduct].ProductIcon,
                SizedBox(
                  height: 30,
                ),
                Text(
                  ProductList[currentPoduct].ProductName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
              padding: EdgeInsets.all(15.0),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow.shade700),
                  ),
                  onPressed: (){
                    setState(() {

                      ShoppingCart.add(ProductList[currentPoduct].ProductCartIcon);
                      if(currentPoduct < ProductList.length - 1){
                        currentPoduct++;
                      }
                    });

                  },
                  child: Text('Add To Cart',style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),),
              ),
            ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orange.shade200),
              ),
              onPressed: (){
                setState(() {
                  if(currentPoduct < ProductList.length - 1){
                    currentPoduct++;
                  };
                });

              },
              child: Text('Next Item',style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),)
            ),
          ),
        ),
      ],
    );
  }
}


