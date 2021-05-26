import 'package:flutter/material.dart';
import 'package:flutter_app_truonghoangtuan/homepage/components/homeheader.dart';

import 'categoryform.dart';

class Body extends StatelessWidget {
  int cateId;


  Body(this.cateId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeHeader(),
      ),
      body: CategoryForm(cateId),
    );
  }
}
