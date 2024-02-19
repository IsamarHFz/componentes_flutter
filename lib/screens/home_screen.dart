import 'package:flutter/material.dart';
import 'package:practica3/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('App de componentes de flutter', style: TextStyle(color: Color.fromARGB(255, 252, 250, 250)),),
      ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Entradas',
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
              subtitle: Text('Recuperar infomación de TextField',
                            style: Theme.of(context).textTheme.bodySmall,
                            ),
              leading: const Icon(Icons.input_rounded),
              trailing: const Icon(Icons.arrow_right_outlined),
            ),
            const Divider(),
            ListTile(
              title: Text('Lista infinita', 
                        style: AppTheme.lightTheme.textTheme.headlineLarge,
                        ),
              subtitle: Text('Recuperar muchos elementos', 
                      style: Theme.of(context).textTheme.bodySmall,
                      ),
              leading: const Icon(Icons.list_alt_sharp),
              trailing: const Icon(Icons.arrow_right_outlined),
            ),
            const Divider(),
            ListTile(
              title: Text('Notificaciones', 
                        style: Theme.of(context).textTheme.headlineLarge,
                        ),
              subtitle: Text('Manejo de notificaciones', 
                        style: Theme.of(context).textTheme.bodySmall,
                        ),
              leading: const Icon(Icons.notification_important),
              trailing: const Icon(Icons.arrow_right_outlined),
            ),
          ],
        ),
      );
  }
}