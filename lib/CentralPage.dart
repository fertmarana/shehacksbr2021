import 'package:flutter/material.dart';
import 'package:foodrone/classes_definicao/ColetaAgendada.dart';
import 'package:foodrone/PageView_produtos.dart';

import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:async';
// Home Page for the Residents App
// The first part they can see a few Tips to recycle
// With the green button they can schedule a waste collection
// The screens under the button show the schedules already done by the user

class CentralPage extends StatefulWidget {
_CentralPage createState() => _CentralPage();
}

class _CentralPage extends State<CentralPage>{

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

var controller = PageController(
  viewportFraction: 1 ,
  initialPage: 0,
);
//CentralPage({Key key}) : super(key: key);

final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Coletas parseJosn(String response) {
    if(response==null){
      return null;
    }
    Map<String, dynamic> jsonMap = json.decode(response);

    Coletas temp = Coletas.fromJson(jsonMap);
    return temp;

  }

// In the app there is ⚙️ icon that opens a drawer with the following buttons:
// notifications, privacy, about the app, help and exit the app (they are not function).
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
    key: _scaffoldKey,
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

    body:  Container(
      child: Align(
      alignment: Alignment.topCenter,
      child: Wrap(
        runSpacing: 2.0,
        direction: Axis.horizontal,
        children: [
          SizedBox(height: 10.0),
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

          SizedBox(height: 10.0),
          PageView_produtos(),
          SizedBox(height: 20.0),

          Container(
            child: new Center(
              child: Container(
                height: 180,
                width: 300,
              alignment: Alignment.topCenter,
              margin: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                //color: Color(0xffb714365),
                color: Colors.red,
                image: new DecorationImage(

                  image: new ExactAssetImage('imagens/saldo.png'),
                  scale: 1,),

                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),


              )
            ),
          )
        ],
      ),

    ),
    ),
  );
}
}

