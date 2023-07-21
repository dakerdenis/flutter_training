import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:test_app/repositories/crypto_coins/models/crypto_coin.dart';

class CryptoCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList() async {
    //асинхронный метод который не известно когда закончится
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC,ETH,BNB&tsyms=USD');
    final data = response.data as Map<String, dynamic>;

    final dataList = data.entries.map((e) => CryptoCoin(
          name: e.key,
          priceInUSD: (e.value as Map<String, dynamic>)['USD'],
        )).toList(); //entries  -вернёт всё в виде словаря, метод мар прохоидт по всему списку и что то делает с данными
      return dataList;
  }
}
