import 'package:flutter/material.dart';
import 'package:sesion4/sesion4/home4widget.dart';
import 'package:sesion4/widgetsdemo.dart';
import 'package:sesion4/sesion5/home5.dart';

class Menuwidget extends StatelessWidget {
  const Menuwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesiones clases'),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Buttonwidget(
              text: 'Sesion 4',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home4widget()));
              },
            ),
            Buttonwidget(
              text: 'Sesion 5',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home5Page()));
              },
            )
          ],
        ),
      ),
    );
  }
}
