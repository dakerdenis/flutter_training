import 'package:flutter/material.dart';
import 'package:test_app/router/router.dart';
import 'package:test_app/theme/theme.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      routes: routes,
      //home: const CryptoListScreen(title: 'Flutter Demo Home Page'),
    );
  }
}