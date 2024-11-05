import 'package:flutter/material.dart';


class registreUser extends StatefulWidget {
  const registreUser({super.key});

  @override
  State<registreUser> createState() => _registreUserState();
}

class _registreUserState extends State<registreUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text('registro usuario'),
      ),
      body: Padding(padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Form(child: Column(
          children: [
            Image.network("https://cdn-icons-png.flaticon.com/512/1160/1160922.png", height: 110, 
            width: 110),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(labelText: 'Correo',
              border: OutlineInputBorder(), 
              ),
              validator: (value) {
                if(value == null || value.isEmpty ){
                  return 'correo  No valido';
                }
                return null; // si no hay error en el ingreso del correo
             
              },
            ),
        SizedBox(height: 12),
         TextFormField(
              decoration: InputDecoration(labelText: 'Password',
              border: OutlineInputBorder(), 
              ),
            ),

             SizedBox(height: 12),
         TextFormField(
              decoration: InputDecoration(labelText: ' Confirme su Password',
              border: OutlineInputBorder(), 
              ),
            ),
          SizedBox(height: 12),
          ElevatedButton(onPressed: (){


          }, child: Text('Registrarse', style: TextStyle(color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white ,
            foregroundColor: Colors.pink[200],
            minimumSize: Size(double.infinity, 50),
          ),
          )

           
         
          ],
        )),
      ),
      ),
    );
  }
}