import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_app/repositories/crypto_coins/models/crypto_coin.dart';

class CryptoCoinsRepository{
  Future<List<CryptoCoin>> getCoinsList() async{ //асинхронный метод который не известно когда закончится
    final response = await Dio().get (
      'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,BNB&tsyms=USD'
    );
    debugPrint(response.toString()); 
  }
}