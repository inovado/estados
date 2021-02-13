

import 'dart:async';

import 'package:estados/models/usuario.dart';
// SINGLETON

class _UsuarioService{

  Usuario _usuario;

  StreamController<Usuario> _usuarioStreamController = new StreamController<Usuario>.broadcast();

  Usuario get usuario => this._usuario;
  bool get existeUsuario => (this._usuario !=null) ? true : false; // true si hay algo en usuario y false si no hay.

  Stream<Usuario> get usuarioStream => _usuarioStreamController.stream;

  void cargarUsuario(Usuario user){
    this._usuario = user;
    this._usuarioStreamController.add(user);
  }

  void cambiarEdad( int edad){
    this._usuario.edad = edad;
    this._usuarioStreamController.add(this._usuario);
  }

  dispose(){
    this._usuarioStreamController?.close(); // el signo de interrogacion verifica si hay algun stream para realizar la accion de cerrar
  }

}

final usuarioService = new _UsuarioService(); // singleton

