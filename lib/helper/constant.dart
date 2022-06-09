import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Color from HexCode

Color defaultColor = HexColor("#4D6681");
Color defaultColor1 = HexColor("#5A86BA");
Color tabBackground = HexColor("#3E618A");
Color textColor1 = HexColor("#FF6F00");
Color cardBackGroundColor = HexColor("#EDF2F8");
String clockImage = "assets/images/clock.png";

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class CustomTextFeild extends StatelessWidget {
  final Widget prefix;
  final Function(String) validator;
  final int maxLength;
  final int maxLines;
  final int minLines;
  final height;
  final String labelName;
  final String hintText;
  final TextEditingController fieldController;
  final List<TextInputFormatter> textInputFormatter;
  final TextInputType keyboardType;
  final Function function;
  final EdgeInsets margin;
  final Function(String) value;
  final bool readOnly;
  final bool isSecureTextField;
  final Color color;
  final String errorText;
  final bool isError;

  CustomTextFeild(
      {this.fieldController,
      this.prefix,
      this.hintText,
      this.margin = const EdgeInsets.symmetric(horizontal: 10.0),
      this.maxLength,
      this.maxLines,
      this.minLines,
      this.height,
      this.labelName,
      this.textInputFormatter,
      this.keyboardType,
      this.readOnly,
      this.validator,
      this.function,
      this.isError,
      this.errorText,
      this.isSecureTextField,
      this.value,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: TextFormField(
          maxLength: maxLength,
          maxLines: maxLines,
          onTap: function,
          onFieldSubmitted: (value) {},
          validator: (value) {
            if (value.isEmpty) {
              return errorText;
            }
            return null;
          },
          readOnly: readOnly == null ? false : readOnly,
          keyboardType: keyboardType,
          obscureText: isSecureTextField == null ? false : isSecureTextField,
          inputFormatters: textInputFormatter,
          controller: fieldController,
          onChanged: value,
          cursorColor: defaultColor,
          decoration: new InputDecoration(
            border: new OutlineInputBorder(),
            labelText: hintText,
            prefixIcon: prefix,
          ),
          style: TextStyle(
              letterSpacing: 0.5,
              fontSize: 19.0,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w300,
              color: Colors.black),
        ));
  }
}

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final Function callBack;
  final Color backgroundColor;
  final Color textColor;
  CustomButton(
      {Key key,
      this.callBack,
      this.title,
      this.width,
      this.backgroundColor,
      this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 50,
        // color: defaultColor1,
        decoration: BoxDecoration(
            color: backgroundColor == null ? defaultColor1 : backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: TextButton(
          onPressed: () {
            print("on click");
            callBack();
          },
          child: Text(
            title,
            style: TextStyle(
                color: textColor == null ? Colors.white : textColor,
                fontSize: 18,
                letterSpacing: 1.0,
                fontWeight: FontWeight.w700),
          ),
        )
        //  RoundedLoadingButton(
        //     child: Text(title, style: TextStyle(color: Colors.white)),
        //     controller: ctrl,
        //     color: defaultColor,
        //     onPressed: callBack()),
        );
  }
}

pushTo(BuildContext context, page) async {
  await Navigator.of(context).pushNamed(page);
}

popToBack(BuildContext context) async {
  Navigator.of(context).pop();
}

pushAndReplace(BuildContext context, page) {
  Navigator.of(context).pushReplacement(
      new MaterialPageRoute(builder: (BuildContext context) => page));
}

Widget copyRight() {
  return Container(
    // height: 50,
    child: Padding(
      padding: EdgeInsets.only(bottom: 10, top: 10),
      child: Text(
        " © All rights resevered. \nCopyright TimeClockWizard.com 2021",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey, fontSize: 14, letterSpacing: 0.5),
      ),
    ),
  );
}

Widget customAppBar(String title) {
  return AppBar(
    title: Text(title),
    backgroundColor: tabBackground,
  );
}
