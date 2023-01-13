import 'package:flutter/services.dart' show rootBundle;

import 'dart:convert';



class _MenuProvider {
  _MenuProvider() {

    // cargardata();
  }

  List<dynamic> opciones = [];

  Future<List<dynamic>> cargardata() async {
    
    final resp = await rootBundle.loadString('data/menu_opts.json');
      
      Map dataMap = json.decode( resp );
      opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = new _MenuProvider();