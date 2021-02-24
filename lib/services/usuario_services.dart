import 'package:estados/models/usuario.dart';

import 'package:flutter/material.dart';


class UsuarioServices with ChangeNotifier { // with changeNotifier es para que funcion con el notifier
  
  Usuario _usuario;
  Usuario get usuario => this._usuario; // regresa un usuario
  bool get existeUsuario => (this._usuario != null) ? true : false;// identifica si tiene cargado un usuario

  set usuario(Usuario user){
    this._usuario = user;
    notifyListeners(); // manda mensaje a todo donde se utilize el user
  }

  void cambiarEdad(int edad){
    this.usuario.edad = edad;
    notifyListeners();

  }

  void removeUsuario(){
    this._usuario = null;
    notifyListeners();
  }

  //para agregar una profesion
  void agregarProfesion(){
    this.usuario.profesiones.add('Profesion ${this._usuario.profesiones.length + 1}');
    notifyListeners(); // notifica que hay que redibujar la pagina
  }

}