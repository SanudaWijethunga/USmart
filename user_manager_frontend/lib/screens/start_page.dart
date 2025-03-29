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
                fontSize: 22.0
               )),
              SizedBox(height: 30.0,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.symmetric(
                      vertical: 18,
                    )
                  ),
                  child: Text("Get Started", style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0
                  ),)),
              )
            ],
          ),
        )
      ),
    );
  }
}