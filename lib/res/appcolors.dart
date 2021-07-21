import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColorString) {
    var hexColor = hexColorString;
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(String hexColor) : super(_getColorFromHex(hexColor));
}

class AppColors {
  AppColors();

  //static Color get primaryColor => HexColor("#EC615C");
  static Color get primaryColor => HexColor("#A9A9A9");
  static Color get searchBarColor => HexColor("#F3F3F3");
  static Color get textColor => HexColor("#5E5959");
  static Color get cardColor => HexColor("#FBFBFB");
  static Color get greenColor => HexColor("#35CF3B");
  static Color get greenColor2 => HexColor("#B9FCBB");
  static Color get blueColor => HexColor("#2F80ED");

  static Color get usColor => HexColor("#665C9E");
  static Color get ghColor => HexColor("#5C9E5F");
}
