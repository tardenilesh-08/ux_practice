import 'package:flutter/material.dart';
import 'package:ux_practice/ux_screens/trip.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const TripApp(),
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
      ),
    );
