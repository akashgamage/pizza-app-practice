import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMacroWidget extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const MyMacroWidget(
      {required this.title,
      required this.value,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.blue.withOpacity(0.1)),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(0, 96, 125, 139),
            offset: Offset(0, 0),
            blurRadius: 4,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(height: 4),
            Text(value,
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold)),
            Text(title,
                style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 10,
                    fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ));
  }
}
