import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int cont = 0;

  void decrementar(){
    cont--;
  }

  void incrementar(){
    cont++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Pode entrar',
            style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700),
          ),
          Text(
            '0',
            style: TextStyle(
                fontSize: 100,
                color: Colors.white,
                fontWeight: FontWeight.w700),
          ),
          Row(
            children:[
              TextButton(
                onPressed: decrementar,
                child: Text(
                  'Sair',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
              TextButton(
                onPressed: incrementar,
                child: Text(
                  'Entrar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
