import 'package:flutter/material.dart';

class VeiculosTela extends StatelessWidget {
  const VeiculosTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Veículos'),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "No jogo, os jogadores controlam uma variedade de veículos de demolição, cada um com suas próprias características e habilidades únicas, mas os personagens humanos envolvidos no jogo são menos desenvolvidos em comparação com os veículos.",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              _buildVehicleContainer(
                "Ramdozer",
                "Um bulldozer robusto que pode destruir a maioria das construções ao colidir com elas.\nOperador: Não especificado no jogo.",
              ),
              _buildVehicleContainer(
                "Backlash",
                "Um caminhão basculante que destrói estruturas ao derrapar e bater na traseira.\nOperador: Não especificado no jogo.",
              ),
              _buildVehicleContainer(
                "Skyfall",
                "Um carro esportivo que pode saltar e destruir estruturas ao cair sobre elas.\nOperador: Não especificado no jogo.",
              ),
              _buildVehicleContainer(
                "Siderwinder",
                "Um veículo rápido com capacidade de saltar e girar para destruir obstáculos.\nOperador: Não especificado no jogo.",
              ),
              _buildVehicleContainer(
                "J-Bomb",
                "Um robô de salto equipado com propulsores que pode esmagar construções ao aterrissar sobre elas.\nOperador: Não especificado no jogo.",
              ),
              _buildVehicleContainer(
                "Thunderfist",
                "Um robô gigante que destrói estruturas com socos poderosos.\nOperador: Não especificado no jogo.",
              ),
              _buildVehicleContainer(
                "Cyclone Suit",
                "Um robô equipado com lâminas giratórias para destruir construções.\nOperador: Não especificado no jogo.",
              ),
              _buildVehicleContainer(
                "Ballista",
                "Um carro esportivo equipado com mísseis que podem destruir estruturas à distância.\nOperador: Não especificado no jogo.",
              ),
              _buildVehicleContainer(
                "Titan",
                "Um tanque que pode disparar projéteis para destruir obstáculos.\nOperador: Não especificado no jogo.",
              ),
              SizedBox(height: 20),
              Image.network(
                "https://i.ytimg.com/vi/_87LloKg-Co/hqdefault.jpg?sqp=-oaymwEmCOADEOgC8quKqQMa8AEB-AH-BIAC4AOKAgwIABABGH8gEygaMA8=&rs=AOn4CLCAEUFAlNEpi5u_CoPQtbioU4sl_w",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVehicleContainer(String title, String description) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: VeiculosTela(),
  ));
}
