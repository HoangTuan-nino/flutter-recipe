import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class AccountDetail extends StatefulWidget {
  @override
  _AccountDetailState createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  final fullName = TextEditingController();
  final phoneNumber = TextEditingController();
  final email = TextEditingController();
  final address = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30,),
            fullNameTextFormField(),
            SizedBox(height: 30,),
            phoneNumberTextFormField(),
            SizedBox(height: 30,),
            emailTextFormField(),
            SizedBox(height: 30,),
            addressTextFormField(),
            SizedBox(height: 30),
            SizedBox(height: 30,),

          ],
        ),
      ),
    );
  }

  TextFormField fullNameTextFormField() {
    return TextFormField(
      controller: fullName,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your full name ",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.title)
      ),
    );
  }

  TextFormField phoneNumberTextFormField() {
    return TextFormField(
      controller: phoneNumber,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your phone number",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.phone_android)
      ),
    );
  }


  TextFormField emailTextFormField() {
    return TextFormField(
      controller: email,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your email",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.email_outlined)
      ),
    );
  }
  TextFormField addressTextFormField() {
    return TextFormField(
      controller: address,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "Enter your address",
          // If  you are using latest version of flutter then lable text and hint text shown like this
          // if you r using flutter less then 1.20.* then maybe this is not working properly
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: Icon(Icons.location_city)
      ),
    );
  }

}
