import 'package:flutter/material.dart';
import 'package:sesion4/widgetsdemo.dart';
import 'package:sesion4/sesion4/emailpasswidget.dart';
import 'package:sesion4/sesion4/checkswitchwidget.dart';
import 'package:sesion4/sesion4/sliderwidget.dart';
import 'package:sesion4/sesion4/scrollwidget.dart';

class Home4widget extends StatelessWidget {
  const Home4widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 4'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Buttonwidget(
              text: 'Email & Password',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmailPassWidget()),
                );
              },
            ),
            Buttonwidget(
              text: 'CheckBox - Switch',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CheckBoxSwidget()),
                );
              },
            ),
            Buttonwidget(
              text: 'Slider',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SliderWidget()),
                );
              },
            ),
            Buttonwidget(
              text: 'Scrool - Listview - Pullrefresh',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScrollwidgetPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
