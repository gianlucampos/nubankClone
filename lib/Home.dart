import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'components/ActionContainer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).accentColor,
      appBar: AppBar(
        title: Text(
          'Olá, Gianluca',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.adjust),
            onPressed: () {
              print('Visualizar Conta');
            },
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              print('Configurações');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(FontAwesome5.credit_card),
                      title: Text('Cartão de Crédito'),
                      subtitle: Text(
                          'Fatura Atual\nRS 64,99\nLimite Disponível RS 535,00'),
                      isThreeLine: true,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 150,
              child: Card(
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(FontAwesome5Solid.coins),
                      title: Text('Conta'),
                      subtitle: Text('Saldo Disponível\nRS 1056,83'),
                      isThreeLine: true,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            ActionContainer(
              title: 'Pagar',
              icon: FontAwesome5Solid.barcode,
            ),
            SizedBox(width: 10),
            ActionContainer(
              title: 'Indicar Amigos',
              icon: FontAwesome5Solid.user_friends,
            ),
            SizedBox(width: 10),
            ActionContainer(
              title: 'Transferir',
              icon: MaterialIcons.attach_money,
            ),
          ],
        ),
      ),
    );
  }
}
