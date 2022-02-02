import 'package:flutter/material.dart';

import 'ux_screens/inspiration.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Inspiration(),
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
      ),
    );
