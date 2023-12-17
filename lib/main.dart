import 'package:currency_converter/page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'page',
    routes: {
      'page': (context) => const MyPage(),
    },
  ));
}
