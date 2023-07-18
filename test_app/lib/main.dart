import 'dart:ui';

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
        listTileTheme: const ListTileThemeData(iconColor: Color.fromARGB(255, 214, 166, 20)),
        appBarTheme: const AppBarTheme(backgroundColor:  Color.fromARGB(255, 214, 166, 20),
        titleTextStyle:TextStyle(color: Colors.black, fontSize: 23) ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.w500,
            fontSize: 20
          ),
          bodySmall: TextStyle(
            color: Color.fromARGB(192, 255, 255, 255),
            fontWeight: FontWeight.w300,
            fontSize: 14
          )
        )
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: _counter,
        separatorBuilder: (context, index)=> const Divider(),
        itemBuilder: (context,i)=>ListTile(
          leading:  Image.asset('assets/images/bitcoin.png', height: 25,width: 25,),
          title:  Text(
            "Bitcoins",
            style: theme.textTheme.bodyMedium,),
            subtitle: Text(
              "2000\$",
              style: theme.textTheme.bodySmall,
            ),
            trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
