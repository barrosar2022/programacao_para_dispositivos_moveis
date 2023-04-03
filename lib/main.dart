import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int cont = 0;

  void decrementar() {
    setState(() {
      cont--;
    });
  }

  void incrementar() {
    setState(() {
      cont++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fundo.jpg'),
              fit: BoxFit.cover,
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pode entrar',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Text(
                cont.toString(),
                style: TextStyle(
                  fontSize: 100,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: decrementar,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(100, 100),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      )
                  ),
                  child: Text(
                    'Sair',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24),
                  ),
                ),
                SizedBox(width: 32,),
                TextButton(
                  onPressed: incrementar,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(100, 100),
                      primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      )
                  ),
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24),
                  ),
                ),
              ],
            ),
          ],
        ),),


    );
  }
}
