import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Pagina 2 hola que hace'),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Text('Establecer Usuario',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                
              }
              ),
            MaterialButton(
              child: Text('Edad',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                
              }
              ),
            MaterialButton(
              child: Text('Añadir profesion',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                
              }
              )

              
          ],
        )
      )
     
   );
  }
}