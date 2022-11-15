import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxSwidget extends StatefulWidget {
  const CheckBoxSwidget({super.key});

  @override
  State<CheckBoxSwidget> createState() => _CheckBoxSwidgetState();
}

class _CheckBoxSwidgetState extends State<CheckBoxSwidget> {
  bool isSwitched = true;
  bool isChecked = false;
  bool isSwitchedCupertino = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox & Switch'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(children: [
          Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
          ),
          Checkbox(
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
          CupertinoSwitch(
            value: isSwitchedCupertino,
            activeColor: CupertinoColors.activeBlue,
            onChanged: (value) {
              setState(() {
                isSwitchedCupertino = value;
              });
            },
          )
        ]),
      ),
    );
  }
}
