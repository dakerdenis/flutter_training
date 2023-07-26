import 'package:dio/dio.dart';
import 'package:test_app/repositories/crypto_coins/abstract_coins_repository.dart';
import 'package:test_app/repositories/crypto_coins/models/crypto_coin.dart';

class CryptoCoinsRepository implements AbstracktCoinsRepository{
  @override
  Future<List<CryptoCoin>> getCoinsList() async {
    //асинхронный метод который не известно когда закончится
    final response = await Dio().get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,AID&tsyms=USD');
    final data =
        response.data as Map<String, dynamic>; //String dynamic - словарь
    final dataRaw = data['RAW'] as Map<String,
        dynamic>; // data[RAW] - обращение к словарю data по ключу RAW

    final cryptoCoinsList = dataRaw.entries
        .map((e){
            final usdData = (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
            final price = usdData['PRICE'];
            final imageUrl = usdData['IMAGEURL'];
           return CryptoCoin(
              //метод map - прохоидт по всем элементам списка приводя к виду  который мы задали
              name: e.key,
              priceInUSD: price,
              imageUrl: 'https://www.cryptocompare.com/$imageUrl',
            );})
        .toList(); //entries  -вернёт всё в виде словаря,
    return cryptoCoinsList;
  }
}
