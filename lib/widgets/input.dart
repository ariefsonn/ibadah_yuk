import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class InputForm extends StatelessWidget {
  const InputForm({
  super.key, required this.icon, required this.controller,

  });

  final TextEditingController controller;
  final Widget icon;





  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(
          color: Colors.grey
      ),

      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
            top: 15,
            bottom: 15,
            left: 80
        ),

        enabledBorder: OutlineInputBorder(

          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Color(0xff575DFB), width: 1),

        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1, color: Color(0xff575DFB)),
          borderRadius: BorderRadius.circular(14),
        ),
        prefixIcon: icon
      ),
    );
  }
}