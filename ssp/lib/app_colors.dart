import 'package:flutter/material.dart';

class AppColors
{
  static Color app_bg_color = Colors.blue;
  static Color app_title_color = "#fa840e".toColor();
  static Color app_title_bar_color = "#fa840e".toColor();
  static Color app_icon_color = "#0c1e53".toColor();
  static Color app_circle_bg_color = "#0c1e53".toColor();

}
extension ColorExtension on String {
  toColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}