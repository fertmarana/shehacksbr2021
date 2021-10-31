import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodrone/classes_definicao/ColetaAgendada.dart';
import 'package:foodrone/app_usuarios_moradores/sobreAgendamento.dart';

class AgendamentoLista extends StatelessWidget {
  final Coletas agenda;
  AgendamentoLista({Key key, this.agenda}) : super(key: key);

  var controller = PageController(
    viewportFraction: 0.8,
    initialPage: 0,

  );


MaterialColor checkStatusColeta (String statusColeta) {
  if (statusColeta == 'agendada') {
  return Colors.blue;
  }
  else if (statusColeta == 'feita') {
    return Colors.green;
  }
  else return Colors.red;
}



  @override
  Widget build(BuildContext context) {

    return new Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 200.0,
      width: 800,
      child: PageView.builder(
      controller: controller,
      scrollDirection: Axis.horizontal,
      itemCount: agenda == null ? 0 : agenda.coletando.length, // Can be null
        itemBuilder: (BuildContext context, int index) {
          return new GestureDetector(
              onLongPress : (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => sobreAgendamento(agendas: agenda.coletando[index])),
                );
                },
          child: Padding(
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Container(

                    width: 200.0,
                    height: 200.0,
                    //margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      //color: Color(0xffb714365),
                  color: Colors.white,

                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Wrap(

                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                    ),
                    Container(

                      //decoration: BoxDecoration(border: Border.all(color: Colors.blue, width: 5)),

                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Container(

                          //decoration: BoxDecoration(border: Border.all(color: Colors.blue, width: 5)),

                        ),
                        Text('Endereço: \n' + agenda.coletando[index].enderecoColeta,
                          textAlign: TextAlign.start,
                          style: TextStyle(fontSize: 17.0, color: Colors.black),)
                      ],
                    ),
                    Container(
                        width: 500.0,
                        height: 30.0,
                        child:   Text('  Dia da Coleta: ' + agenda.coletando[index].diaColeta,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20.0, color: Colors.black),)
                    ),
                    Container(
                        width: 500.0,
                        height: 30.0,
                        child:   Text('  Cooperativa: ' + agenda.coletando[index].cooperativa,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 20.0, color: Colors.black),)
                    ),


                  ],
                  )
                  )
                )
              );



         // );

        }
          //onTap: () {
          // Navigator.push(
          //   context,
          //  MaterialPageRoute(builder: (context) => Sugestions())
          //);
          //},
    )
        );
  }
}