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






class Login extends StatefulWidget{
  @override
  LoginState createState(){
    print(" CreateState Login");
    return new LoginState();
  }
}

class LoginState extends State<Login>{
  
  bool _mostrar= true;

  doClick(){
    print("click");
    setState(() {_mostrar = !_mostrar;
    });
  }

  @override
  Widget build(BuildContext context){
    return
        Column(crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Row(
              children: [
                Expanded(child:
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Nombre',
                  ),
                ),
                ),
              ]

            ),

            const Divider(
              color: Colors.white10,
              height:20,
              thickness:5,
              indent:20,
              endIndent:0,
            ),

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

                  if (_mostrar)
                    IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: (){
                          doClick();
                        }
                    )
                  else
                    IconButton(
                        icon: Icon(Icons.visibility_off),
                        onPressed: (){
                          doClick();
                        }
                    )

                ]
            ),

            const Divider(
              color: Colors.white10,
              height:20,
              thickness:5,
              indent:20,
              endIndent:0,
            ),


            Row(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.white10,
                ),
                  child: Text("Recordar")
                )

              ]

            )
        ]
        );

  }
}
