import 'package:flutter/material.dart';
import 'tabItem.dart';
import 'bottomNavigation.dart';
import 'package:foodrone/CentralPage.dart';
import 'package:foodrone/minhaConta.dart';

import 'package:foodrone/classes_definicao/ColetaAgendada.dart';
class MeuCarrinho extends StatefulWidget {
  _MeuCarrinho createState() => _MeuCarrinho();
}

class _MeuCarrinho extends State<MeuCarrinho> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();




  final drawer = Drawer(
    child: ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.notifications_active),
          title: Text("Notificações"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.lock),
          title: Text("Privacidade"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text("Sobre"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.help_center ),
          title: Text("Ajuda"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){
          },
        ),
        ListTile(
          leading: Icon(Icons.sensor_door),

          title: Text("Sair"),
          trailing: Icon(Icons.arrow_forward),
          onTap: (){
            // builder: (_) => CatadorOuMorador();
          },
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        endDrawer: drawer,
        appBar: AppBar(

        title: const Text('',
        style: TextStyle(color: Color(0xff16613D), fontWeight: FontWeight.bold)
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: <Widget>[
          IconButton(icon: Icon(Icons.settings, color: Color(0xff16613D)),
          onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
          ),
          ],
    ),

    body: Container(
        child: Align(
        alignment: Alignment.center,
        child: Wrap(
        runSpacing: 4.0,
        direction: Axis.horizontal,

        children: [
        SizedBox(height: 30.0),
        Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0),
          //alignment: Alignment(-0.5, 0.6),
          child: const TextField(
            obscureText: false,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Adicionar Novo Item?',
            ),
          )
        ),


        Container(
            height: 370.0,
            width: 400.0,
            margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView(
                children: const <Widget>[
                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        //height: 100.0,
                        // width: 100.0, // fixed width and height
                        backgroundImage: AssetImage('imagens/banana.png', ),
                        backgroundColor: Colors.white,
                      ),
                      title: Text('Banana'),
                      subtitle: Text(
                          '15 unidades - RS 45,00'
                      ),
                      trailing: Icon(Icons.more_vert),
                      isThreeLine: true,
                    ),
                  ),

                  Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        //height: 100.0,
                        // width: 100.0, // fixed width and height
                        backgroundImage: AssetImage('imagens/apple.png'),
                        backgroundColor: Colors.white,
                      ),
                      title: Text('Maçã'),
                      subtitle: Text(
                          '7 unidades - RS 54,00'
                      ),
                      trailing: Icon(Icons.more_vert),
                      isThreeLine: true,
                    ),
                  ),
                ],
              ),
        ),
          SizedBox(height: 60.0),
          Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              alignment: Alignment.bottomCenter,


              //alignment: Alignment(-0.5, 0.6),
              child: Text('Total: RS 99,00'),

          ),
          Container(
            alignment: Alignment.center,

            child: Material(

              borderRadius: BorderRadius.circular(30.0),


              color: Colors.redAccent,
              child: MaterialButton(

                minWidth: 200.0,
                padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                onPressed: () {
                },
                child: Text("Chamas Drone",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),

          ),
        ]
        )
        )
    ),
    );
  }
}