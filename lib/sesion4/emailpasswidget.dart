import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EmailPassWidget extends StatelessWidget {
  const EmailPassWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email & Password'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 247, 11, 11),
                    ),
                    borderRadius: BorderRadius.circular(50)),
                filled: true,
                fillColor: Colors.amber,
                hintText: 'Correo electronico',
                hintStyle: const TextStyle(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.email,
                  color: Colors.black,
                  size: 30,
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 247, 11, 11),
                    ),
                    borderRadius: BorderRadius.circular(50)),
                filled: true,
                fillColor: const Color.fromARGB(255, 0, 248, 124),
                hintText: 'Password',
                hintStyle: const TextStyle(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.password_sharp,
                  color: Colors.black,
                  size: 30,
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
            TextFormField(
              maxLength: 9,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 2, color: Colors.grey),
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color.fromARGB(255, 247, 11, 11),
                    ),
                    borderRadius: BorderRadius.circular(50)),
                filled: true,
                fillColor: const Color.fromARGB(255, 0, 248, 124),
                hintText: 'Phone',
                hintStyle: const TextStyle(color: Colors.grey),
                suffixIcon: const Icon(
                  Icons.phone,
                  color: Colors.black,
                  size: 30,
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
