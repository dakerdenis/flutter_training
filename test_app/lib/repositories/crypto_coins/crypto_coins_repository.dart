import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CryptoCoinsRepository{
  Future<void> getCoinsList() async{ //асинхронный метод который не известно когда закончится
    final response = await Dio().get (
      'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,BNB&tsyms=USD'
    );
    debugPrint(response.toString());
  }
}