import 'package:flutter/material.dart';
import 'package:user_manager_frontend/screens/sign_up_page.dart';

class LoginPage extends StatefulWidget{
    @override
    logingState createState() => logingState();
}

class logingState extends State<LoginPage>{

    final TextEditingController _controller = TextEditingController();

    @override
    void dispose(){
        _controller.dispose();
        super.dispose();
    }

    @override
    Widget build(BuildContext context){
        return MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Text("Welcome back!", style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.0,
                            ),),
                            SizedBox(height: 30,),
                            SizedBox(
                                width: 350,
                                child: TextField(
                                    controller: _controller,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: "Enter your username",
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                            )
                                        ),
                                        labelStyle: TextStyle(
                                            color: Colors.black
                                        )
                                    ),
                                    cursorColor: Colors.black,
                                ),
                            ),
                            SizedBox(height: 20,),
                            SizedBox(
                                width: 350,
                                child: TextField(
                                    controller:  _controller,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: "Enter your password",
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black,
                                            )
                                        ),
                                        labelStyle: TextStyle(
                                            color: Colors.black,
                                        )
                                    ),
                                    cursorColor: Colors.black,
                                ),
                            ),
                            SizedBox(height: 20,),
                            SizedBox(
                                width: 350,
                                child: ElevatedButton(
                                    onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blueGrey,
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20
                                        )
                                    ),
                                    child: Text("Login", style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),)),
                            ),
                            SizedBox(height: 20,),
                            GestureDetector(
                                onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=> SignUpPage())
                                    );
                                },
                                child: Text("Do not have an account? Sign Up", style: TextStyle(
                                    fontWeight: FontWeight.bold
                                ),),
                            )
                        ],
                    ),
                ),
            ),
        );
    }
}