import 'package:flutter/material.dart';

class L10n {
  //This List is provided to supported Locales in Material App
  static final all = [
    const Locale('en'),
    const Locale('hi'),
  ];
  static String getFlag(String code) {
    String flag = '';
    switch (code) {
      case 'en':
        flag = '🇺🇸';
        break;
      case 'hi':
        flag = '🇮🇳';
        break;
    }
    return flag;
  }
}
