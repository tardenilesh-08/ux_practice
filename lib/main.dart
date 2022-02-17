import 'package:flutter/material.dart';
import 'package:ux_practice/ux_screens/login_page_one.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginPageOne(),
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
      ),
    );
