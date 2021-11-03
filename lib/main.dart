import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ibrahim/profile.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() {
  runApp(MyApp());
}


double conhight=100;
double conwidht=100;

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final navigatorkey= GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorkey,
      home: SlideDrawer(
        backgroundColor: Colors.green.shade800,
        items: [
          MenuItem('Home',icon: Icons.account_balance,
              onTap: (){}),
          MenuItem('Project',icon: Icons.ac_unit_outlined,
              onTap: (){}),
          MenuItem('Favourite',icon: Icons.favorite,
              onTap: (){}),
          MenuItem('Profile',icon: Icons.account_circle_sharp,
              onTap: (){
            navigatorkey.currentState!
                .push(MaterialPageRoute(builder:
                (context)=>Profile()));
              }),
          MenuItem('Setting',icon: Icons.settings,
              onTap: (){}),
        ],
        child: MyHomePage(),
      ),
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
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
        title: Text("FACEBOOK")
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
