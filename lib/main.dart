import 'package:cracha_pbsoft/cracha_TCE.dart';
import 'package:cracha_pbsoft/cracha_pbsoft.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHome());
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'Lista de crachás';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
        backgroundColor: Colors.teal,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Center(
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CrachaPbsoft(),
                  ),
                );
              },
              child: const Text('Crachá Pbsoft'),
            ),
          ),
          Center(
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CrachaTce(),
                  ),
                );
              },
              child: const Text('Crachá TCE'),
            ),
          ),
        ],
      ),
    );
  }
}
