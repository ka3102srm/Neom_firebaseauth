import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'auth_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("NEOM"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: size.width,
        height: size.height,

        child: Stack(
          children: <Widget>[
            /*Align(
              alignment: Alignment(0,0),
      ),*/
             Column(
               children: [
          const SizedBox(
            height: 100

            ,
          ),
                 GestureDetector(
            onTap: () {
              AuthService().signInWithGoogle();
            },
            child: const Image(image: AssetImage('assets/google.jpg'))),
                 Text('CLICK ON THE ICON TO SIGN IN',
            style: TextStyle(
                  fontSize:20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
            )),
               ],
             ),
        ],
      )
    )
    );
  }
}