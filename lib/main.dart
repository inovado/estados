

import 'package:estados/services/usuario_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'package:estados/pages/pagina_1_page.dart';
import 'package:estados/pages/pagina_2_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    
    return MultiProvider( // creacion del PROVIDER
          providers: [
            ChangeNotifierProvider(lazy: false, create: ( _ ) => new UsuarioServices())

          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            darkTheme: ThemeData.dark(),
            title: 'Material App',
            initialRoute: 'pagina1',
            routes: {
              'pagina1': ( _ )=> Pagina1Page(),
              'pagina2': ( _ )=> Pagina2Page(),
              
            },

      ),
    );
  }
}