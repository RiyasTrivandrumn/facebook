 import 'package:flutter/material.dart';
 
 
 Widget headerbutton(
      {required String buttonText,
      required IconData buttonIcon,
      required void Function() buttonAction,
      required Color buttonColor,
      required Color textColor}) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(
        buttonText.toString(),
      ),
      style: ButtonStyle(foregroundColor: MaterialStateProperty.all(textColor)),
    );
  }