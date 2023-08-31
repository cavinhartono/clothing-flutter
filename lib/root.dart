import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const Color primaryColor = Color(0xFF3BA3E8);
const Color bgColor = Color(0xFFFBFBFD);
const Color titleColor = Color(0xFF222222);
const Color subtitleColor = Color(0x4A222222);

const Color black300 = Color(0xff7A7A7A);
const Color black400 = Color(0xff4F4F4F);
const Color black500 = Color(0xff222222);

const double defaultPadding = 16.0;
const double defaultBorderRadius = 12.0;

class CurrencyFormat {
  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'IDR. ',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}
