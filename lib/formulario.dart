import 'package:flutter/material.dart';


/* Plantilla stateful
class Formulario extends StatefulWidget{
  @override
  FormularioState createState(){
    print(" CreateState Formulario");
    return new FormularioState();
  }
}

class FormularioState extends State<Formulario>{
  @override
  Widget build(BuildContext context){
    return Text(" hola");
  }
}
 */






class Formulario extends StatefulWidget{
  @override
  FormularioState createState(){
    print(" CreateState Formulario");
    return new FormularioState();
  }
}

class FormularioState extends State<Formulario>{

  bool _mostrar= true;

  doClick(){
    print("click");
    setState(() {_mostrar = !_mostrar;
    });
  }

  @override
  Widget build(BuildContext context){
    return
      Row(
        children: [
          Expanded(child:
          TextField(
            obscureText: !_mostrar,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          ),

          FlatButton(onPressed: (){
            doClick();
          },
          child: Text("ver")
          )
        ]
      );
  }
}
