import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(children: _crearitemscorto()),
    );
  }

  List<Widget> _crearitemscorto() {
    final List<String> opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$item!'),
            subtitle: const Text('Cualquier cosa'),
            leading: const Icon(Icons.account_balance_wallet),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          const Divider()
        ],
      );
    }).toList();
  }
}
