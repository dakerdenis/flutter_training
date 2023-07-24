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
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: (_cryptoCoinsList == null) ? const SizedBox():
      
       ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          const coinName = 'Bitcoin';
          return const CryptoCoinTile(coinName: coinName,);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.download),
        onPressed:  () async {
          _cryptoCoinsList = await  CryptoCoinsRepository().getCoinsList(); //await - дожидаемся пока дарт выполнит внутри себя ассинхронный метод и вернёт что либов нашу переменную
          setState(() {}); // отвечает за обновление экрана
      }),

    );
  }
}
