// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:master/models/model_provider.dart';
import 'package:provider/provider.dart';
class CustomTextFormFiled extends StatelessWidget {
  CustomTextFormFiled({
    Key? key,
    required this.controller,
    required this.textInputType,
    required this.icon,
    required this.text,
    required this.onSaved,
    required this.validator,
  }) : super(key: key);
  final TextInputType textInputType;
  final TextEditingController? controller;
  final IconData icon;
  final String text;
  void Function(String?)? onSaved;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    final modelProvider = context.watch<ModelProvider>();
    final isDarkModeEnabled = modelProvider.isDarkModeEnabled;
    final iconColor = isDarkModeEnabled ? Colors.blue[900] : Colors.blue;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        onSaved: onSaved,
        controller: controller,
        keyboardType: textInputType,
        // validator: (value) {
        //   if (value?.isEmpty ?? true) {
        //     return 'This Field Is Required';
        //   } else {
        //     return null;
        //   }
        // },
        validator: validator,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(5.5),
          ),
          prefixIcon: Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
          hintText: text,
          hintStyle: TextStyle(
            color: iconColor,
            fontSize: 20,
          ),
          filled: true,
          fillColor: Colors.blue[50],
        ),
      ),
    );
  }
}