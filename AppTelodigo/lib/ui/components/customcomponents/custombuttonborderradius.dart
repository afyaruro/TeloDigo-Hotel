import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget CustomButtonsRadius(Color colorBackground, Color colorText,
    String textButton, bool border, Function action) {
  BoxDecoration IsBorder(bool border, Color colorText, Color colorBackgroun) {
    if (border == true) {
      return BoxDecoration(
        color: colorBackgroun,
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: colorText,
          width: 1,
        ),
      );
    } else {
      return BoxDecoration(
          color: colorBackgroun, borderRadius: BorderRadius.circular(50));
    }
  }

 

  return Container(
      width: 400,
      height: 45,
      decoration: IsBorder(border, colorText, colorBackground),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(50),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          borderRadius: BorderRadius.circular(50),
          splashColor: Colors.black54,
          onTap: () async {
            await Future.delayed(Duration(milliseconds: 500), () {
              action();
            });
          },
          child: Center(
            child: Text(
              textButton,
              style: TextStyle(
                  color: colorText,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
            ),
          ),
        ),
      ));
}
