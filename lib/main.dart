import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

double conhight=100;
double conwidht=100;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FACEBOOK"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
             onTap: (){
               setState(() {
                 conhight=300;
                 conwidht=300;

               });
             },
              onDoubleTap: (){
               setState(() {
                 conhight=100;
                 conwidht=100;
               });
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 4000),
                height: conhight,
                width: conwidht,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image:NetworkImage("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg",
                      ),
                      fit: BoxFit.cover

                  ),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(180),
                  border: Border.all(color: Colors.purple,width: 5)
                ),
              ),
            ),
            Image.asset("assets/image/ttc.png"),
            Image.asset("assets/image/ibrahim.jpg"),
            Image.asset("assets/image/ttc.png"),
            Image.asset("assets/image/ibrahim1.jpg"),
            Image.asset("assets/image/ibrahim1.jpg"),




        ]),
      ),
      
    );
  }
}
