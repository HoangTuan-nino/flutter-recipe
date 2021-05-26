import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_truonghoangtuan/homepage/homepage.dart';
import 'components/body.dart';

class CartPage extends StatelessWidget {

  static String routeName = "/carts";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, HomePage.routeName);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Cart Details"),
      ),

      body: Body(),
    );
  }
}
