import 'package:flutter/material.dart';
import 'package:flutter_application_3/screen/Suma.dart';

class Menuoption extends StatefulWidget {
  const Menuoption({super.key});

  @override
  State<Menuoption> createState() => _MenuoptionState();
}

class _MenuoptionState extends State<Menuoption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
  
      appBar: AppBar(title: const Text("Menu de opciones"),  foregroundColor: Colors.black
      ),
      body: ListView(
        children: [
          const SizedBox(height: 16),
          Image.network("https://png.pngtree.com/png-clipart/20200701/original/pngtree-cute-style-math-stationery-elements-png-image_5364501.jpg", 
          height: 280,width: 280,
          ),
          SizedBox(height: 10),
          Card(child: ListTile(
            title: Text("Suma"),
            leading: Icon(Icons.add),
            trailing: Icon(Icons.arrow_circle_right_outlined),
            onTap: () {
              Navigator.push(context,
                      MaterialPageRoute(builder: (context) => suma())
                      );
            },
          ),
          ),
           Card(child: ListTile(
            title: Text("Calculadora"),
            leading: Icon(Icons.account_tree_outlined),
            trailing: Icon(Icons.arrow_circle_right_outlined),
            onTap: () {},
          ),
          ),
           Card(child: ListTile(
            title: Text("Registro"),
            leading: Icon(Icons.account_circle_sharp),
            trailing: Icon(Icons.arrow_circle_right_outlined),
            onTap: () {},
          ),
          ),
             Card(child: ListTile(
            title: Text("Login"),
            leading: Icon(Icons.add_card_outlined),
            trailing: Icon(Icons.arrow_circle_right_outlined),
            onTap: () {},
          ),
          ),


        ],
      ),
    );
  }
}