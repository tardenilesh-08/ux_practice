import 'package:flutter/material.dart';
import 'package:ux_practice/home_pages/food_home_page.dart';
import 'package:ux_practice/ux_screens/food_delivery.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const FoodDelivery(),
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
      ),
    );
