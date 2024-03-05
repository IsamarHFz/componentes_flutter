import 'package:flutter/material.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/inputs.dart';
import 'package:practica3/screens/notifications.dart';
import 'package:practica3/theme/app_theme.dart';
// import 'package:practica3/theme/app_theme.dart';

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
              leading: const Icon(Icons.input_rounded, 
                    color: AppTheme.secondaryColor,
              ),
              trailing: const CircularProgressIndicator(
                value: 0.9,
              ),
              // trailing: const Icon(Icons.arrow_right_outlined,
              //       color: AppTheme.secondaryColor,
              // ),
              onTap: () {
                final ruta1 = MaterialPageRoute(builder: (context){
                  return const Inputs();
                });
                Navigator.push(context, ruta1);
              },
            ),
            const Divider(),
            ListTile(
              title: Text('Lista infinita', 
                        style: Theme.of(context).textTheme.headlineLarge,
                        ),
              subtitle: Text('Recuperar muchos elementos', 
                      style: Theme.of(context).textTheme.bodySmall,
                      ),
              leading: const Icon(Icons.list_alt_sharp,
                        color: AppTheme.secondaryColor,
              ),
              trailing: const Icon(Icons.arrow_right_outlined,
                        color: AppTheme.secondaryColor,
              ),
              onTap: () {
                final ruta2 = MaterialPageRoute(builder: (context){
                  return const InfiniteList();
                });
                Navigator.push(context, ruta2);
              },
            ),
            const Divider(),
            ListTile(
              title: Text('Notificaciones', 
                        style: Theme.of(context).textTheme.headlineLarge,
                        ),
              subtitle: Text('Manejo de notificaciones', 
                        style: Theme.of(context).textTheme.bodySmall,
                        ),
              leading: const Icon(Icons.notification_important, 
                        color: AppTheme.secondaryColor,
              ),
              trailing: const Icon(Icons.arrow_right_outlined,
                          color: AppTheme.secondaryColor,
              ),
              onTap: () {
                final ruta3 = MaterialPageRoute(builder: (context){
                  return const Notifications();
                });
                Navigator.push(context, ruta3);
              },
            ),
          ],
        ),
      );
  }
}