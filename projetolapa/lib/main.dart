import 'package:flutter/material.dart';
import 'HistoriaTela.dart';
import 'PersonagensTela.dart';
import 'FasesTela.dart';
import 'VeiculosTela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Blast Corps'),
            backgroundColor: const Color(0xffffae42),
            centerTitle: true,
          ),
          backgroundColor: const Color(0xff252525),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.network(
                  'https://www.raregamer.co.uk/staf/bclogo_final2.jpg',
                  width: 300,
                  height: 150,
                ),
                const SizedBox(
                  height: 60,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffffae42),
                    fixedSize: const Size(160, 60),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HistoriaTela(),
                      ),
                    );
                  },
                  child: const Text('História'),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffff9200),
                    fixedSize: const Size(160, 60),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PersonagensTela(),
                      ),
                    );
                  },
                  child: const Text('Personagens'),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xffe55e05),
                    fixedSize: const Size(160, 60),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FasesTela(),
                      ),
                    );
                  },
                  child: const Text('Fases'),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff9c3202),
                    fixedSize: const Size(160, 60),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VeiculosTela(),
                      ),
                    );
                  },
                  child: const Text('Veículos'),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
