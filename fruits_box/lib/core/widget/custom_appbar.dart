
  import 'package:flutter/material.dart';
import 'package:fruits_box/core/utils/app_text_style.dart';

AppBar buildAppBar(context, {required String title}) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_new),
      ),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text(title, style: TextStyles.bold19, textAlign: TextAlign.center),
    );
  }