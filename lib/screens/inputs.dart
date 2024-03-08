import 'package:flutter/material.dart';
import 'package:practica3/screens/home_screen.dart';
import 'package:practica3/screens/images_screen.dart';
import 'package:practica3/screens/infinite_list.dart';
import 'package:practica3/screens/notifications.dart';
import 'package:practica3/theme/app_theme.dart';

class Inputs extends StatefulWidget {
  const Inputs({super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  bool valueSwitch = false;
  double sliderValue = 0.0;
  int foodRadio = 0;
  bool postreCheck1 = false;
  bool postreCheck2 = false;
  bool postreCheck3 = false;
  int selectedIndex = 0; // Elemento seleccionado de la BottomNavigationBar
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
        'Entradas'
        ),
      ),
      body: ListView(
        children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              entradaTexto(),
              entradaSwitch(),
              entradaSlider(),
              entradasRadio(),
              Text(
                '¿Qué postres te gustan?',
                style: AppTheme.lightTheme.textTheme.headlineLarge,
              ),
              entradasCheck(),
                  const ElevatedButton(
                    onPressed: null, 
                    child: Text(
                      'Guardar',
                    )
                  ),
            ],
          ),
        ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => openScreen(context,index),
        backgroundColor: AppTheme.backColor,
        
        items: const [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(
              Icons.home,
              color: AppTheme.primaryColor,
              ),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(
              Icons.list,
              color: AppTheme.primaryColor,
              ),
            label: 'Lista',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(
              Icons.notification_add,
              color: AppTheme.primaryColor,
              ),
            label: 'Notificaciones',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(
              Icons.image,
              color: AppTheme.primaryColor,
              ),
            label: 'Imágenes',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppTheme.secondaryColor,
            icon: Icon(
              Icons.exit_to_app,
              color: AppTheme.primaryColor,
              ),
            label: 'Salir',
          ),
        ],
      ),
    );
  }

  openScreen(BuildContext context, int index){
    MaterialPageRoute ruta = MaterialPageRoute(
      builder: (context) => const HomeScreen());
      switch( index ){
        case 0: 
          ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
        case 1: 
          ruta = MaterialPageRoute(builder: (context) => const InfiniteList());
          break;
        case 2: 
          ruta = MaterialPageRoute(builder: (context) => const Notifications());
          break;
        case 3: 
          ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
          break;
      }
      setState(() {
        selectedIndex = index;
        Navigator.push(context, ruta);
      });
  }

  TextField entradaTexto() {
    return TextField(
          style: AppTheme.lightTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border: const UnderlineInputBorder(),
            labelText: 'Escribe tu nombre: ',
            labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch(){
    return Row(
      children: [
        const FlutterLogo(),
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Switch(
          value: valueSwitch, 
          onChanged: (value) {
            setState(() {
              valueSwitch = value;
            });
          })
      ],
    );
  }
  
  Column entradaSlider() {
    return Column(
      children: [
        Text(
          '¿Qué tanto te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          value: sliderValue, 
          divisions: 10,
          label: '${sliderValue.round()}',
          onChanged: (value){
            setState(() {
              sliderValue = value;
              print('valor del slider: $sliderValue');
            });
          }
          ),
      ],
    );
  }
  
  Column entradasRadio() {
    return Column(
      children: [
        Text('¿Qué prefieres?',
        style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        ListTile(
          title: Text(
            'Tacos al pastor',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 1,
            groupValue: foodRadio,
            onChanged: (value){
              setState(() {
              foodRadio = value!;
              //print('Comida seleccionada: $foodRadio');
              });              
            },
          ),
        ),
        ListTile(
          title: Text(
            'Chileatole',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 2,
            groupValue: foodRadio,
            onChanged: (value){
              setState(() {
              foodRadio = value!;
              //print('Comida seleccionada: $foodRadio');
              });              
            },
          ),
        ),
        ListTile(
          title: Text(
            'Pozole',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 3,
            groupValue: foodRadio,
            onChanged: (value){
              setState(() {
              foodRadio = value!;
              //print('Comida seleccionada: $foodRadio');
              });              
            },
          ),
        ),
        ListTile(
          title: Text(
            'Mole',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 4,
            groupValue: foodRadio,
            onChanged: (value){
              setState(() {
              foodRadio = value!;
              //print('Comida seleccionada: $foodRadio');
              });              
            },
          ),
        ),
        ListTile(
          title: Text(
            'Chiles en nogada',
            style: AppTheme.lightTheme.textTheme.bodySmall,
          ),
          leading: Radio(
            value: 5,
            groupValue: foodRadio,
            onChanged: (value){
              setState(() {
              foodRadio = value!;
              //print('Comida seleccionada: $foodRadio');
              });              
            },
          ),
        ),
      ],
    );
  }
  
  Row entradasCheck() {
    return Row(
      children: [
        Text(
          'Helado',
          style: AppTheme.lightTheme.textTheme.bodySmall,
        ),
        Checkbox(value: postreCheck1,
         onChanged: (value){
          setState(() {
            postreCheck1 = value!;
          });
         }),
         Text(
          'Chocoflan',
          style: AppTheme.lightTheme.textTheme.bodySmall,
         ),
         Checkbox(value: postreCheck1,
         onChanged: (value){
          setState(() {
            postreCheck2 = value!;
          });
         }),
         Text(
          'Pay de limón',
          style: AppTheme.lightTheme.textTheme.bodySmall,
         ),
         Checkbox(value: postreCheck1,
         onChanged: (value){
          setState(() {
            postreCheck3 = value!;
          });
         }),
      ],
    );
  }
}