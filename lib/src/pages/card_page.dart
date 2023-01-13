import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
          _cardTipo1(),
          const SizedBox(height: 30.0),
          _cardTipo2(),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text('Soy el titulo de esta tarjeta'),
              subtitle: Text(
                  'Aqui estamos kjfbqdkwjsfblkqwejf qowiefh oiw  eqh foiw  h ofihw  ofiuh woqefh ow  qifh oqw foihq weoifhnoiqwe foiqhweofhnioquwhbkjnfioquk qweolifjnwqoien'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('Cancelar'),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text('Ok'),
                  onPressed: () {},
                )
              ],
            )
          ],
        ));
  }

  Widget _cardTipo2() {
    final card = Column(
      children: <Widget>[
        const FadeInImage(
          image: NetworkImage(
              'https://www.tom-archer.com/wp-content/uploads/2018/06/milford-sound-night-fine-art-photography-new-zealand.jpg'),
          placeholder: AssetImage('assets/original.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        Container(
            padding: const EdgeInsets.all(10.0),
            child: const Text('Nose que poner'))
      ],
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 5.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
