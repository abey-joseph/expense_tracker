import 'dart:ui';

import 'package:injectable/injectable.dart';

@lazySingleton
class UiColors {
  final blueShade = Color.fromRGBO(32, 133, 235, 1);
  Color whiteBg = Color.fromRGBO(208, 217, 223, 1);
  Color bgDark = Color.fromRGBO(16, 15, 19, 1);

  changeColor(bool isDark) {
    if (isDark) {
      whiteBg = Color.fromRGBO(208, 217, 223, 1);
      bgDark = Color.fromRGBO(16, 15, 19, 1);
    } else {
      whiteBg = Color.fromRGBO(16, 15, 19, 1);
      bgDark = Color.fromRGBO(254, 244, 254, 1);
    }
  }
}
