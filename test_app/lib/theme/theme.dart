import 'package:flutter/material.dart';

final darkTheme = ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
          listTileTheme: const ListTileThemeData(
              iconColor: Color.fromARGB(255, 255, 255, 255)),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 31, 31, 31),
              elevation: 0,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700)),
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              bodySmall: TextStyle(
                  color: Color.fromARGB(192, 255, 255, 255),
                  fontWeight: FontWeight.w300,
                  fontSize: 14)));
              