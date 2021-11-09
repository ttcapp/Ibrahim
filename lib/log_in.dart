import 'package:flutter/material.dart';

String _email="smibrahim5487@gmail.com";
String _password="54875487";
final _key=GlobalKey<FormState>();
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log In Page"),


      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _key,
          child: Column(children: [
            TextFormField(
              validator: (text){
               if(text==null  || text.isEmpty )
                 {
                   return"Field is Empty";
                 }
              },
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.
                  circular(12),
                )
              ),

            ),
            SizedBox(height:20),
            TextFormField(
              validator: (text){
                if(text==null  || text.isEmpty )
                {
                  return"Field is Empty";
                }
              },
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Your Password",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(12),
                )
              ),
            ),
            SizedBox(height: 20,
            ),
            ElevatedButton(onPressed: (){
              _key.currentState!.validate();
            }, child: Text("Log In")
           )

    ],
      ),
        ),
      )
    );

  }
}
