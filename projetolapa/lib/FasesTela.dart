import 'package:flutter/material.dart';

class FasesTela extends StatelessWidget {
  const FasesTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fases'),
        backgroundColor: const Color(0xffe55e05),
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
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildFaseItem(
              title: 'Fases de Treinamento',
              description:
                  'Essas fases introduzem os jogadores às mecânicas básicas do jogo e aos diferentes veículos de demolição.',
            ),
            _buildFaseItem(
              title: 'Fases Principais',
              description:
                  'Essas são as fases centrais onde o objetivo é limpar o caminho para o caminhão nuclear.',
            ),
            _buildFaseItem(
              title: 'Fases de Salvamento',
              description:
                  'Nessas fases, os jogadores devem usar suas habilidades de demolição para salvar civis presos ou em perigo.',
            ),
            _buildFaseItem(
              title: 'Fases de Desafio',
              description:
                  'Fases adicionais desbloqueadas após completar certos objetivos, oferecendo desafios extras.',
            ),
            _buildFaseItem(
              title: 'Fases de Platinum',
              description:
                  'Fases mais difíceis que são desbloqueadas depois de completar as fases principais com altas pontuações.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFaseItem({required String title, required String description}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
