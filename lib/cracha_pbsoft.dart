import 'package:flutter/material.dart';

void main() {
  runApp(CrachaPbsoft());
}

class CrachaPbsoft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CrachaPbsoftPage(),
    );
  }
}

class CrachaPbsoftPage extends StatefulWidget {
  @override
  State<CrachaPbsoftPage> createState() => _CrachaPbsoftPageState();
}

class _CrachaPbsoftPageState extends State<CrachaPbsoftPage> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.0,
                ),
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height /
                      2.0, //Altura do container escuro
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.deepOrange,
                        width: 4.0,
                      ),
                    ),
                    color: Color.fromARGB(255, 10, 51, 71),
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(children: const [
                        Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Text(
                            'Samuel Fernandes',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(2.0),
                          child: Text(
                            'ANALISTA DE SISTEMAS',
                            style: TextStyle(
                                color: Colors.deepOrange, fontSize: 13),
                          ),
                        ),
                      ]),
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 6.5,
                ),
                //logo
                Container(
                  alignment: Alignment.center,
                  child: const Image(
                    image: AssetImage('imagens/logo.png'),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 15.5,
                ),
                //foto
                Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.deepOrange,
                      width: 1.0,
                    ),
                  ),
                  // child: const Image(
                  //   image: AssetImage('imagens/foto.png'),
                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
