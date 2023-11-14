// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/model_provider.dart';

class CustomListTileSettingsScreen extends StatelessWidget {
  const CustomListTileSettingsScreen({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.onPressed,
    required this.trailingIcon,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final VoidCallback onPressed;
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    final modelProvider = context.watch<ModelProvider>();
    final isDarkModeEnabled = modelProvider.isDarkModeEnabled;
    final tileColor = isDarkModeEnabled ? Colors.black87 : Colors.white;
    final iconColor = isDarkModeEnabled ? Colors.white54 : Colors.black54;
    final titleColor = isDarkModeEnabled ? Colors.white54 : Colors.black87;
    final iconButtonColor = isDarkModeEnabled ? Colors.white54 : Colors.black54;
    return ListTile(
      tileColor: tileColor,
      leading: Icon(
        leadingIcon,
        color: iconColor,
      ),
      title: Text(
        title,
        style: TextStyle(color: titleColor),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: Icon(
          trailingIcon,
          color: iconButtonColor,
        ),
      ),
    );
  }
}

class CustomListTileSwitchSettingsScreen extends StatelessWidget {
  const CustomListTileSwitchSettingsScreen({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.trailingSwitch,
  }) : super(key: key);

  final IconData leadingIcon;
  final String title;
  final Widget trailingSwitch;

  @override
  Widget build(BuildContext context) {
    final modelProvider = context.watch<ModelProvider>();
    final isDarkModeEnabled = modelProvider.isDarkModeEnabled;
    final tileColor = isDarkModeEnabled ? Colors.black87 : Colors.white;
    final iconColor = isDarkModeEnabled ? Colors.white54 : Colors.black54;
    final titleColor = isDarkModeEnabled ? Colors.white54 : Colors.black87;
    final switchColor = isDarkModeEnabled ? Colors.white54 : Colors.black54;
    final trailingSwitchColor =
        isDarkModeEnabled ? Colors.white54 : Colors.black54;

    return ListTile(
     // minVerticalPadding: 20,
      tileColor: tileColor,
      leading: Icon(
        leadingIcon,
        color: iconColor,
      ),
      title: Text(
        title,
        style: TextStyle(color: titleColor),
      ),
      trailing: Theme(
        data: ThemeData(
          unselectedWidgetColor: switchColor,
          accentColor: trailingSwitchColor,
        ),
        child: trailingSwitch,
      ),
    );
  }
}

// class CustomListTileSwitchSettingsScreen extends StatelessWidget {
//   const CustomListTileSwitchSettingsScreen({
//     Key? key,
//     required this.leadingIcon,
//     required this.title,
//     required this.trailingSwitch,
//   }) : super(key: key);
//   final IconData leadingIcon;
//   final String title;
//   final Widget trailingSwitch;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Icon(leadingIcon),
//       title: Text(title),
//       trailing: trailingSwitch,
//     );
//   }
// }
