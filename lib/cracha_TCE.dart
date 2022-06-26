import 'package:flutter/material.dart';

void main() {
  runApp(CrachaTce());
}

class CrachaTce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CrachaTcePage(),
    );
  }
}

class CrachaTcePage extends StatefulWidget {
  @override
  State<CrachaTcePage> createState() => _CrachaTcePageState();
}

class _CrachaTcePageState extends State<CrachaTcePage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 143, 13, 4),
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // SizedBox(
                  //   height: MediaQuery.of(context).size.height / 2.0,
                  // ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height /
                        2.5, //Altura do container escuro
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 143, 13, 4),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height /
                        2.0, //Altura do container escuro
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                'Samuel Fernandes dos Santos',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: Text(
                                'Terceirizado',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Data de Nascimento',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Text(
                                        '24/05/1903',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Matrícula',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '238445',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Naturalidade',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Rio de Janeiro',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Text(
                                        'Função',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Analista',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: const [
                                      Text(
                                        'RG',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '0000000',
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //imagens
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //logo
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: const [
                        Image(
                          image: AssetImage('imagens/logo-tce.png'),
                          width: 60,
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            'Tribunal de Contas do Estado da Paraíba',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'Carteira Digital',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 18.5,
                  ),
                  //foto
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.height / 4.5,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
