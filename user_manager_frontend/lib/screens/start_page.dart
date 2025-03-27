import 'package:flutter/material.dart';

import 'login_page.dart';

class StartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 218, 218, 218),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hello, Welcome to USmart",
               style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
               )),
              SizedBox(height: 30.0,),
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text("Get Started", style: TextStyle(
                  color: Colors.black,
                ),),
              ),
            ],
          ),
        )
      ),
    );
  }
}