import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
          listTileTheme: const ListTileThemeData(
              iconColor: Color.fromARGB(255, 214, 166, 20)),
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 214, 166, 20),
              titleTextStyle: TextStyle(color: Colors.black, fontSize: 23)),
          textTheme: const TextTheme(
              bodyMedium: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              bodySmall: TextStyle(
                  color: Color.fromARGB(192, 255, 255, 255),
                  fontWeight: FontWeight.w300,
                  fontSize: 14))),
      routes: {
        '/': (context) => CryptoListScreen(title: 'Flutter Demo Home Page'),
        '/coin': (context) => CryptoCoinScreen(),
      },
      //home: const CryptoListScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key, required this.title});

  final String title;

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, i) {
          const coinName = 'Bitcoin';
          return ListTile(
            leading: Image.asset(
              'assets/images/bitcoin.png',
              height: 25,
              width: 25,
            ),
            title: Text(
              coinName,
              style: theme.textTheme.bodyMedium,
            ),
            subtitle: Text(
              "2000\$",
              style: theme.textTheme.bodySmall,
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.of(context).pushNamed(
                '/coin',
                arguments: coinName,
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
    );
  }
}

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
      print('You must provide args');
      return;
    }
    if (args is! String) {
      log('You must provide String args');
      return;
    }
    coinName = args;
    setState(() {
      
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coinName ?? '...'), //проверка на null если разработчик не передал данные то по дефолту будут точки
      ),
    );
  }
}
