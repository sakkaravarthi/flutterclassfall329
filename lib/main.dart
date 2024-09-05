import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFirstDesign(),
    );
  }
}
class MyFirstDesign extends StatelessWidget {
  const MyFirstDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First Degisn Flutter Page"),
      ),
      body: Center( // center helps to align all the widgets in center
        
        child: Column( // column helps to align all the widgets in y direction
          children: [ // children helps to design multiple widgets in one column
            SizedBox(height: 20,),
            Text(" I am one", style: TextStyle(fontSize: 23),),
            SizedBox(height: 20,), // sizedbox gives space
            Text(" I am two", style: TextStyle(fontSize: 55,),),
            SizedBox(height: 30,),
            Icon(Icons.beach_access,color: Colors.green,size: 56, ),
            SizedBox(height: 30,),
            Icon(Icons.account_box,color: Colors.red,size: 56, ),
            SizedBox(height: 10,),
            // create a button which could be actionable
            ElevatedButton(onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Welcome")));
            }, child: Text("Login")),
            SizedBox(height: 30,),
            Container(
              height: 60,
              width: 100,
              color: Colors.orange,
            )
          ],
        )
        
        
      ),
    );
  }
}
