import 'package:flutter_app_truonghoangtuan/category/categorypage.dart';
import 'package:flutter_app_truonghoangtuan/homepage/homepage.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_truonghoangtuan/signup/SignupPage.dart';
import 'package:flutter_app_truonghoangtuan/splashpage.dart';
import 'package:flutter_app_truonghoangtuan/signin/SignInPage.dart';
import 'package:flutter_app_truonghoangtuan/cart/cartpage.dart';
import 'package:flutter_app_truonghoangtuan/detail/productpage.dart';

// import 'cart/cartpage.dart';
final Map<String, WidgetBuilder> routes = {
  SplashPage.routeName : (context) => SplashPage(),
  SignInPage.routeName : (context) => SignInPage(),
  SignUpPage.routeName : (context) => SignUpPage(),
  HomePage.routeName : (context) => HomePage(),
  ProductPage.routeName : (context) => ProductPage(),
  CartPage.routeName: (context) => CartPage(),
  CategoryPage.routeName: (context) => CategoryPage(),
};
