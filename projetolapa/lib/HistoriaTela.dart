import 'package:flutter/material.dart';

class HistoriaTela extends StatelessWidget {
  const HistoriaTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('História'),
        backgroundColor: const Color(0xffffae42),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: const Color(0xff252525),
        child: Center(
          child: Container(
            color: Colors.orange,
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            child: const Text(
              'A premissa de "Blast Corps" é bastante direta: o jogador deve destruir obstáculos para limpar o caminho de um caminhão de transporte nuclear que está fora de controle. Se o caminhão colidir com algo, causará uma explosão nuclear. Os jogadores controlam uma equipe de veículos de demolição, cada um com habilidades únicas, para destruir edifícios, pontes e outros obstáculos que se interpõem no caminho do caminhão.',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
