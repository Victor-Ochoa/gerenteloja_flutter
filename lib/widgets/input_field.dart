import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final TextInputType keyboard;
  final TextEditingController controller;
  final bool isPassword;

  InputField(
      {Key key,
      this.icon,
      this.hintText,
      this.keyboard,
      this.controller,
      this.isPassword = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        contentPadding:
            EdgeInsets.only(left: 5, right: 30, bottom: 30, top: 30),
      ),
      style: TextStyle(color: Colors.white),
      obscureText: isPassword,
    );
  }
}
