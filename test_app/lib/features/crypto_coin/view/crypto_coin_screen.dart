
import 'dart:developer';

import 'package:flutter/material.dart';

class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({super.key});
  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  String? coinName;
  @override
  void didChangeDependencies() {
    //  implement didChangeDependencies  нужно вызвать метод супер у родительского метода - CryptoCoinScreen
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args == null) {
      //обзательтая проверка на Null - если пользователь ничего не передал
      // ignore: avoid_print
      print('You must provide args');
      return;
    }
    if (args is! String) {
      log('You must provide String args');
      return;
    }
    coinName = args;
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ??
            '...'), //проверка на null если разработчик не передал данные то по дефолту будут точки
      ),
    );
  }
}