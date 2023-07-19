import 'package:test_app/features/crypto_coin/crypto_coin.dart';
import 'package:test_app/features/crypto_list/crypto_list.dart';



final  routes=  {
        '/': (context) => const CryptoListScreen(title: 'Flutter Demo Home Page'),
        '/coin': (context) => const CryptoCoinScreen(),
      };