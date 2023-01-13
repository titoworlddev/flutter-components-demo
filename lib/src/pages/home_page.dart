import 'package:flutter/material.dart';

import 'package:componentesab/src/providers/menu_provider.dart';

import 'package:componentesab/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargardata(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaitems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaitems(List<dynamic>? data, BuildContext context) {
    final List<Widget> opciones = [];

    for (var opt in data!) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones
        ..add(widgetTemp)
        ..add(const Divider());
    }

    return opciones;
  }
}
