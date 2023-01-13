import 'package:flutter/material.dart';

import 'dart:async';

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController scrollController = ScrollController();

  List<int> listaNumeros = [];
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();

    _agregar10();

    scrollController.addListener(() {
      if (scrollController.position.pixels ==
          scrollController.position.maxScrollExtent) {
        // _agregar10();
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listas'),
        ),
        body: Stack(
          children: <Widget>[_crearLista(), _crearLoading()],
        ));
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina1,
      child: ListView.builder(
        controller: scrollController,
        itemCount: listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          final imagen = listaNumeros[index];

          return FadeInImage(
              image:
                  NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
              placeholder: const AssetImage('assets/original.gif'));
        },
      ),
    );
  }

  Future obtenerPagina1() async {
    const duration = Duration(seconds: 2);

    Timer(duration, () {
      listaNumeros.clear();
      _ultimoItem++;
      _agregar10();
    });

    return Future.delayed(duration);
  }

  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      listaNumeros.add(_ultimoItem);
    }

    setState(() {});
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() {});

    const duration = Duration(seconds: 2);
    Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;

    scrollController.animateTo(scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn,
        duration: const Duration(milliseconds: 250));

    _agregar10();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [CircularProgressIndicator()]),
          const SizedBox(height: 15.0)
        ],
      );
    } else {
      return Container();
    }
  }
}
