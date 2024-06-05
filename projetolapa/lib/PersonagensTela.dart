import 'package:flutter/material.dart';

class PersonagensTela extends StatelessWidget {
  const PersonagensTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personagens'),
        backgroundColor: const Color(0xffff9200),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Personagens Humanóides',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Embora o foco principal do jogo esteja nos veículos, há uma equipe de suporte que inclui pilotos e engenheiros que operam esses veículos.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Operadores:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Os operadores dos veículos são parte da equipe de demolição da Blast Corps, responsáveis por garantir que o caminho do caminhão nuclear esteja livre de obstáculos.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Image.network(
                    'https://i.ytimg.com/vi/_87LloKg-Co/hqdefault.jpg?sqp=-oaymwEmCOADEOgC8quKqQMa8AEB-AH-BIAC4AOKAgwIABABGH8gEygaMA8=&rs=AOn4CLCAEUFAlNEpi5u_CoPQtbioU4sl_w',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const Expanded(
                child:
                    SizedBox()), // Adicionando um Expanded para permitir a rolagem do conteúdo
          ],
        ),
      ),
    );
  }
}
