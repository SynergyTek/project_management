import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0,
    ),
    brightness: Brightness.light,
    visualDensity: VisualDensity(vertical: 0.5, horizontal: 0.5),
    primaryColor: Colors.blue,
    primaryColorBrightness: Brightness.light,
    primaryColorLight: Color(0x1aF5E0C3),
    iconTheme: IconThemeData(
      color: Colors.blue,
    ),
    primaryColorDark: Color(0xff936F3E),
    buttonColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        onPrimary: Colors.white,
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
    ),
    buttonTheme: ButtonThemeData(
      // 4
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
      buttonColor: Colors.blue,
    ),
    canvasColor: Color(0xffE09E45),
    accentColor: Color(0xff457BE0),
    accentColorBrightness: Brightness.light,
    scaffoldBackgroundColor: Colors.grey[200],
    bottomAppBarColor: Colors.white,
    dividerColor: Color(0x1f6D42CE),
    focusColor: Color(0x1aF5E0C3));

InputDecoration inputDecoration(IconData icon, String hintText) {
  return InputDecoration(
    filled: true,

    fillColor: Colors.white,
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none),
    // contentPadding: EdgeInsets.only(bottom: 10),
    prefixIconConstraints: BoxConstraints(maxHeight: 50, maxWidth: 50),
    prefixIcon: Padding(
      padding: const EdgeInsets.all(5.0),
      child: CircleAvatar(
          radius: 50,
          backgroundColor: Colors.grey[300],
          child: Icon(
            icon,
            size: 25,
            color: lightTheme.primaryColor,
          )),
    ),
    // icon: Icon(
    //   Icons.person,
    // ),
    hintText: hintText,
  );
}

BoxDecoration containerBoxDecoration() {
  return BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(10),
      );
}
