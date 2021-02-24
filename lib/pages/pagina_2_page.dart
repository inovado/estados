import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final usuarioService = Provider.of<UsuarioServices>(context, listen: true); // propaga la informacion a todos los widgets que lo escuchan

    return Scaffold(
      appBar: AppBar(
      title: usuarioService.existeUsuario
      ? Text('Nombre: ${usuarioService.usuario.nombre}')
      : Text('Pagina 2')
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Text('Establecer Usuario',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){

                final newUser = new Usuario(
                  nombre: 'pablito', 
                  edad: 700,
                  profesiones: ['cargador', 'chinaco']
                  );
                usuarioService.usuario = newUser;




              }
              ),
            MaterialButton(
              child: Text('Cambiar Edad',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){
                usuarioService.cambiarEdad(45);
                
              }
              ),
            MaterialButton(
              child: Text('Añadir profesion',style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: (){

                usuarioService.agregarProfesion();
                
              }
              )

              
          ],
        )
      )
     
   );
  }
}