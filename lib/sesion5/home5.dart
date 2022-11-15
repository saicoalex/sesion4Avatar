import 'package:flutter/material.dart';

class Home5Page extends StatelessWidget {
  const Home5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sesion 5'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              color: const Color(0xfff80023),
              child: const Center(
                child: Text(
                  'Reclutador',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              color: const Color(0xff5a5f62),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200,
                      child: Image.asset(
                        'assets/rostro.jpg',
                      ),
                    ),
                    const Text(
                      'Developer',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'Alexander',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'Saico Yucra',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
