import 'package:flutter/material.dart';

// ignore: camel_case_types
class suma extends StatefulWidget {
  const suma({super.key});

  @override
  State<suma> createState() => _sumaState();
}

// ignore: camel_case_types
class _sumaState extends State<suma> {
  //va la parte logica
  final TextEditingController _number1 = TextEditingController();
  final TextEditingController _number2 = TextEditingController();
  double _resultado = 0.0;

  void _CalcularSuma() {
    //el texto ingresado _number1 a numero de tipo double si falla se le accina por defecto 0
    double number1 = double.tryParse(_number1.text) ?? 0.0;
    double number2 = double.tryParse(_number2.text) ?? 0.0;

    setState(() {
      _resultado = number1 + number2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
                  color: Colors.white),
            ),
            SizedBox(height: 20),
            TextFormField(
              //agrgear la propiedad controller
              controller: _number1,
              decoration: InputDecoration(
                  labelText: 'Primer numero',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _number2,
              decoration: InputDecoration(
                  labelText: 'Segundo  numero',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _CalcularSuma();
              },
              child: Text(
                'Calcular',
                style: TextStyle(color: const Color.fromARGB(255, 221, 19, 89)),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.pink[100],
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 20),
            //PARA QUE ME DE EL RESULTADO  $_resultado
            Text('Resultado: $_resultado',
                style: TextStyle(fontSize: 20, color: Colors.pink[100])),
          ],
        ),
      ),
    );
  }
}
