import 'package:flutter/material.dart';

class login extends StatefulWidget {


  @override
  State<login> createState() => _loginState();
  
}

class _loginState extends State<login> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
         title: Text('Iniciar sesion')),
         body: Padding(
          padding: EdgeInsets.all(16.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Inicia sesión ",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 24.0),
              TextField(
                controller:_emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: "correo electronico"),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(labelText: "Contraseña"),
              ),
              SizedBox(height: 24.0),
              ElevatedButton(onPressed:(){
                print("email: ${_emailController.text} ");
                print("password: ${_passwordController.text} ");
              } ,
               child: Text("Iniciar sesion")
               
               ),
            ],
          )
          
         ),
    );
  }
}

