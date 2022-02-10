import 'package:flutter/material.dart';
import 'package:ux_practice/home_pages/party_home_page.dart';
import 'package:ux_practice/ux_screens/party.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const PartyHomePage(),
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
      ),
    );
