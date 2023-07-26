import 'package:test_app/repositories/crypto_coins/models/crypto_coin.dart';

abstract class AbstracktCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
}