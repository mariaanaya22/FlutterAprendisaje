import 'package:flutter/material.dart';

// ignore: camel_case_types
class suma extends StatefulWidget {
  const suma({super.key});

  @override
  State<suma> createState() => _sumaState();
}

// ignore: camel_case_types
class _sumaState extends State<suma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Transform.translate(
          offset: Offset(0, 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                  "https://cdn-icons-png.flaticon.com/512/4270/4270605.png",
                  height: 20),
              SizedBox(width: 10),
              Text("sumar")
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Digite los numeros:  ",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Primer numero',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
               SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Segundo  numero',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            )
          ],
        ),
      ),
    );
  }
}
