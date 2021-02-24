import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) { // metodo build

    final UsuarioServices usuarioService = Provider.of<UsuarioServices >(context, listen: true); // listen es opcional ya que por defecto esta en true

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1 que hace'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.exit_to_app),
          onPressed: (){
            usuarioService.removeUsuario(); 
          },
          )
        ],
      ),
      body: usuarioService.existeUsuario
        ? InformacionUsuario(usuarioService.usuario)
        :Center(child: Text('No hay usuario selecionado'),),

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
  const InformacionUsuario(this.usuario);
  //const InformacionUsuario({Key key, this.usuario}) : super(key: key);@override
  
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

          ...usuario.profesiones.map( // ... (desestructuracion)-manda cada uno de los elementos de la lista de manera individual
            (profesion)=>ListTile(title: Text(profesion),)
            ).toList()

          // ListTile(title: Text('Profesion 1')),
          // ListTile(title: Text('Profesion 1')),
          // ListTile(title: Text('Profesion 1')),


        ],
      ),
    );
  }
}