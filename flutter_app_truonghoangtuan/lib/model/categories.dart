import 'package:flutter/material.dart';

class Categories {
  int id;
  String title;
  String image;

  Categories({this.id, this.title,this.image});
  static List<Categories> init() {
    List<Categories> data = [
      Categories(id:1, title: "HighLand", image: "assets/images/ic_highland.jpeg"),
      Categories(id:2, title: "Circle K", image: "assets/images/ic_circlek.png" ),
      Categories(id:3, title: "Ministop", image: "assets/images/ic_ministop.png" ),
      Categories(id:4, title: "Seveneleven", image: "assets/images/ic_seveneleven.png" ),
      Categories(id:5, title: "Vinmart", image: "assets/images/ic_vinmart.jpg" ),
    ];
   return data;
    }
  }
