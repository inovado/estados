import 'package:estados/models/usuario.dart';
import 'package:estados/pages/services/usuario_service.dart';
import 'package:flutter/material.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1 que hace'),
      ),
      
      body: StreamBuilder(
        stream: usuarioService.usuarioStream ,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
        
        return snapshot.hasData 
          ? InformacionUsuario(usuarioService.usuario) 
          : Center(child: Text('No hay información del usuario'));

        },
      ),
      //body:  usuarioService.existeUsuario ? InformacionUsuario(usuarioService.usuario) : Center(child: Text('No hay información del usuario')),
      
      floatingActionButton: FloatingActionButton(
       child: Icon(Icons.account_box),
       onPressed: () {
         Navigator.pushNamed(context, 'pagina2');
       }
       ),
   );
  }
}

class InformacionUsuario extends StatelessWidget {
  // const InformacionUsuario({
  //   Key key,
  // }) : super(key: key);

  final Usuario usuario;
  const InformacionUsuario( this.usuario);

  @override
  Widget build(BuildContext context) {


    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text('General', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),

          ListTile(title: Text('Nombre: ${usuario.nombre}')),
          ListTile(title: Text('Edad: ${usuario.edad}')),

          Text('Profesiones', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Divider(),

          ListTile(title: Text('Profesion 1')),
          ListTile(title: Text('Profesion 1')),
          ListTile(title: Text('Profesion 1')),

        ],
      ),
    );
  }
}