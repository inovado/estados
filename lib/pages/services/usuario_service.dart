

import 'package:estados/models/usuario.dart';
// SINGLETON

class _UsuarioService{

  Usuario _usuario;

  Usuario get usuario => this._usuario;

  bool get existeUsuario => (this._usuario !=null) ? true : false; // true si hay algo en usuario y false si no hay.

  void cargarUsuario(Usuario user){
    this._usuario = user;
  }

}

final usuarioService = new _UsuarioService(); // singleton

