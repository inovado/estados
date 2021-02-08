import 'package:flutter/material.dart';


class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1 que hace'),
      ),
      body: Center(
        child: Text('Pagina1Page'),
     ),
     floatingActionButton: FloatingActionButton(
       child: Icon(Icons.account_box),
       onPressed: () {
         Navigator.pushNamed(context, 'pagina2');
       }
       ),
   );
  }
}