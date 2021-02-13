import 'package:estados/models/usuario.dart';
import 'package:estados/pages/services/usuario_service.dart';
import 'package:flutter/material.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: StreamBuilder(
        stream: usuarioService.usuarioStream ,
        //initialData: initialData ,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
          return snapshot.hasData
            ? Text('Nombre: ${ snapshot.data.nombre }')
            : Text('Pagina 2');
          
        },
      ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Text('Establecer Usuario',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){

                final nuevoUsuario = new Usuario(nombre: 'pablito',edad: 87);
                usuarioService.cargarUsuario(nuevoUsuario);
                
              }
              ),
            MaterialButton(
              child: Text('Cambiar Edad',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioService.cambiarEdad(30);
                
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