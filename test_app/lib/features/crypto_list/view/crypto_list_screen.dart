import 'package:flutter/material.dart';
import 'package:test_app/features/crypto_list/widgets/widgets.dart';
import 'package:test_app/repositories/crypto_coins/crypto_coins_repository.dart';

import '../../../repositories/crypto_coins/models/crypto_coin.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});

  final String title;

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  List<CryptoCoin>? _cryptoCoinsList;

  @override
  void initState() { //init state нашего экрана приложения
    // TODO: implement initState
    _loadCryptoCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: (_cryptoCoinsList == null)
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              padding: const EdgeInsets.only(top: 16),
              itemCount: _cryptoCoinsList!
                  .length, //знак  ! - говорит Dartu что этот список точно не пустой ,не переживай и можем обращаться к нему
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, i) {
                final coin = _cryptoCoinsList![i];
                return CryptoCoinTile(
                  coin: coin,
                ); //это не константа так как мы поставляем динамическое значение
              },
            ),
      // floatingActionButton: FloatingActionButton(
      //     child: const Icon(Icons.download),
      //     onPressed: () async {
      //       await _loadCryptoCoins(); 
      //       setState(() {}); 
      //     }),
    );
  }

  Future<void> _loadCryptoCoins() async { //await - дожидаемся пока дарт выполнит внутри себя ассинхронный метод и вернёт что либов нашу переменную
     _cryptoCoinsList = await CryptoCoinsRepository().getCoinsList();
     setState(() {// отвечает за обновление экрана
       
     });
  }
}
