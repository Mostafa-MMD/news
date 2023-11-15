// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:master/models/model_provider.dart';
import 'package:provider/provider.dart';

class CustomCartProfile extends StatelessWidget {
  CustomCartProfile({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  IconData icon;
  String text;

  @override
  Widget build(BuildContext context) {
    final modelProvider = context.watch<ModelProvider>();
    final isDarkModeEnabled = modelProvider.isDarkModeEnabled;
    final textColor = isDarkModeEnabled ? Colors.white70 : Colors.black;
    final iconColor = isDarkModeEnabled ? Colors.black : Colors.white;
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 25,
              child: Icon(
                icon,
                size: 30,
                color: iconColor,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 27.5,
                  fontWeight: FontWeight.w600,
                  color: textColor,
                  letterSpacing: 2,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Divider(
          color: Colors.blue,
          thickness: 2,
          height: 5,
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
