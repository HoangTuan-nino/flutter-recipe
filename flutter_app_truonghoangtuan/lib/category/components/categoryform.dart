import 'package:flutter/material.dart';
import 'package:flutter_app_truonghoangtuan/detail/productpage.dart';
import 'package:flutter_app_truonghoangtuan/model/products.dart';
import 'package:flutter_app_truonghoangtuan/model/utilities.dart';

class CategoryForm extends StatelessWidget {
  int cateID;
  Products product;

  CategoryForm(this.cateID);

  @override
  Widget build(BuildContext context) {
    final productsList = getProductsFromID(cateID);
    return Container(

      child: ListView.builder(
          itemCount:productsList.length,
          itemBuilder: (context, index){
            return ListTile(
              onTap: () {
                Navigator.pushNamed(context, ProductPage.routeName, arguments: ProductDetailsArguments(product: productsList[index]));
              },

              leading: Image.asset(productsList[index].image),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productsList[index].title, style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              subtitle: Text(productsList[index].description),
              selected: true,
              trailing: Text(productsList[index].price.toString()),
            );

          }),
    );
  }

  List<Products> getProductsFromID(int id){
    List<Products> tmp = [];
    final products = Products.init();
    for (int i = 0; i < products.length; i++){
      if(products[i].id == id){
        tmp.add(products[i]);
      }
    }
    return tmp;
  }
}
