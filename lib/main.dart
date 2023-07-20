import 'package:flutter/material.dart';

void main() {
  runApp(MyStatelessApp());
}

class MyStatelessApp extends StatelessWidget {
  int counter = 0;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulApp extends StatefulWidget {
  const MyStatefulApp({Key? key}) : super(key: key);

  @override
  State<MyStatefulApp> createState() => _MyStatefulAppState();
}


class _MyStatefulAppState extends State<MyStatefulApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Ejemplo de Widget Con Estado",
            style: TextStyle(color: Colors.black, fontSize: 20,),
          ),
        ),
        body: Center(
          child: Text(counter.toString(),
            style: TextStyle(fontSize: 50),),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one_sharp),
          onPressed: (){
            counter++;
            print(counter);
            setState(() {

            });
          },
        ),
      );
  }
}


