import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // para tirar o tag de DEBUG do lado direito
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
  //codigo para fazer a contagem de aumentar e diminuir a contagem e pessoas.
  int count = 0;

  // Para diminuir os numeros da contagem de pessoas.
  void decrement() {
    setState(() {
      count--;
    });
    print(count);
  }

  // Para aumentar os numeros da contagem de pessoas.
  void increment() {
    setState(() {
      count++;
    });
    print(count);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/logo_restaurante.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pode Entrar!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),

            // Para afastar o texto dos botoes, vou criar um widget entre os dois botoes.
            const SizedBox(height: 32),

            Text(
              count.toString(),
              style: const TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),

            // Para afastar o texto dos botoes, vou criar um widget entre os dois botoes.
            const SizedBox(height: 32),

            // Criando os Botoes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: decrement,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      // Serve para afastar o teste do botao em todos os lados.
                      fixedSize: const Size(100, 100),
                      // Para mudar a tonalidade de quando clica no botao
                      primary: Colors.black,
                      // mexer na borda do botao
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )),
                  child: const Text(
                    'Saiu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),

                // Para afastar um botao do outro, vou criar um widget entre os dois botoes.
                const SizedBox(width: 45),

                TextButton(
                  onPressed: increment,
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      // Serve para afastar o teste do botao em todos os lados.
                      fixedSize: const Size(100, 100),
                      // Para mudar a tonalidade de quando clica no botao
                      primary: Colors.black,
                      // mexer na borda do botao
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      )),
                  child: const Text(
                    'Entrou',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
