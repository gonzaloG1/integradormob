import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class LoginPage extends StatelessWidget {
  Widget creaEmailinsertar(){
    return Padding(
            padding: const EdgeInsets.only(top:30),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Cliente') ,
              ),
          );
        
  }
  Widget creacontrainsertar(){
    return Padding(
            padding: const EdgeInsets.only(top:30),
            child: TextFormField(
              decoration: InputDecoration(hintText: 'Correo') ,
              obscureText: true,
              ),
          );
 }
  Widget creabotonregistro(){
    return Container(padding: const EdgeInsets.only(top:32) , 
    child:RaisedButton(
      textColor: Colors.white,
      color: Colors.green,
      shape: StadiumBorder(),
      child: Text('Ingresar'),
      onPressed:() {},
    ));


  }

 Widget rendercrearaccountlink(){
    return Container(
      padding:EdgeInsets.only(top:32),
      child: Text(
         'O create una cuenta aqui',
          textAlign: TextAlign.right,
          style: TextStyle(fontWeight: FontWeight.bold)
      
    ));
 }

 Widget divisor(){
   return Container(
        padding: const EdgeInsets.only(top:32),
        child:Row (children:[
          Expanded(child:Divider(height: 1,)),
          Padding(
            padding:const EdgeInsets.symmetric(horizontal:8),
            child:Text('0'),
          ),
          Expanded(child:Divider(height: 1,)),

        ])
   );
 }

Widget buttongoogle(){
  return Container(
    padding: const EdgeInsets.only(top:32) , 
    child:RaisedButton(
      textColor: Colors.white,
      color: Colors.green,
      shape: StadiumBorder(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Icon(FontAwesomeIcons.google),
          Expanded(
            
            child:Text('Entrar con google',textAlign: TextAlign.center,),
          )
        ]
      ),
      onPressed:() {},
    ));
}
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.symmetric(horizontal:16),
        decoration: BoxDecoration(color: Colors.white),
        child:ListView
        (children:[Container(
          child:Image.asset('assets/images/kiraw.jpg',
          height:250.0
          ), 
          color: Colors.green,
        ),
          
          creaEmailinsertar(),
          creacontrainsertar(),
          creabotonregistro(),
          rendercrearaccountlink(),
          divisor(),
          buttongoogle()
        ])
    ));
  }
}