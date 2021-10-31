import 'package:flutter/material.dart';
import 'tabItem.dart';
import 'bottomNavigation.dart';
import 'package:foodrone/CentralPage.dart';
import 'package:foodrone/minhaConta.dart';

class MeuCarrinho extends StatefulWidget {
  _MeuCarrinho createState() => _MeuCarrinho();
}

class _MeuCarrinho extends State<MeuCarrinho> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
        height: 700.0,
        width: 400.0,
        margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: const <Widget>[
              Card(child: ListTile(title: Text('One-line ListTile'))),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                      //height: 100.0,
                     // width: 100.0, // fixed width and height
                    backgroundImage: AssetImage('imagens/apple.png'),
                    backgroundColor: Colors.white,
                  )
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('One-line with trailing widget'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text('One-line with both widgets'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text('One-line dense ListTile'),
                  dense: true,
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(size: 56.0),
                  title: Text('Two-line ListTile'),
                  subtitle: Text('Here is a second line'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: FlutterLogo(size: 72.0),
                  title: Text('Three-line ListTile'),
                  subtitle: Text(
                      'A sufficiently long subtitle warrants three lines.'
                  ),
                  trailing: Icon(Icons.more_vert),
                  isThreeLine: true,
                ),
              ),
            ],
          ),

    ),
    );
  }
}