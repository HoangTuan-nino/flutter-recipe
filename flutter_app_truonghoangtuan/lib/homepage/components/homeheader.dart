import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_truonghoangtuan/cart/cartpage.dart';
import 'package:flutter_app_truonghoangtuan/model/carts.dart';

import '../homepage.dart';
// import 'package:flutter_app_truonghoangtuan/cart/components/body.dart';
// import 'package:flutter_app_truonghoangtuan/cart/cartpage.dart';

class HomeHeader extends StatefulWidget {
  @override
  _HomeHeaderState createState() => _HomeHeaderState();//
  }
  class _HomeHeaderState extends State<HomeHeader> {
  int total;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
   @override
  Widget build(BuildContext context) {
    total = Cart.cart.length;
    return Row(
      children: [
        Expanded(
          child: TextField(
            onTap: () {
              // Navigator.pushNamed(context, SearchPage.routeName);
            },
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search product",
                prefixIcon: Icon(Icons.search)
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, CartPage.routeName);
          },
          child: Container(
              height: 40,
              width: 40,
              child: Badge(
                position: BadgePosition.topEnd(top: 0,end: 0),
                badgeContent: Text(
                  total.toString(), style: TextStyle(color: Colors.white,fontSize: 10)),
                  child:
              IconButton(icon: Icon(Icons.shopping_cart),onPressed: () {
                if(total == 0) {
                  Navigator.pushReplacementNamed(context, HomePage.routeName);
                  AlertDialog alert = AlertDialog(
                    title: Text("Cart Empty"),
                    content: Text("Your cart is empty"),
                    actions: <Widget>[
                      new FlatButton(
                        child: new Text("Close"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                }
                else {
                  final result = Navigator.pushNamed(context, CartPage.routeName);
                  result.then((value) {
                    setState(() {
                      total= Cart.cart.length;
                    });
                  });
                }
              })
              ),),
        )
      ],
    );
  }
}
