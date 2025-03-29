import 'package:flutter/material.dart';
import 'package:user_manager_frontend/screens/login_page.dart';

class SignUpPage extends StatefulWidget{
  @override
  signUpState createState() => signUpState();
}

class signUpState extends State<SignUpPage>{

  final TextEditingController _controller = TextEditingController();

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  Widget buildInputFiled(String label){
    return SizedBox(
      width: 350,
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            )
          ),
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.black
          )
        ),
        cursorColor: Colors.black,
      ),
    );
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Create your account", style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 30,),
              buildInputFiled("Enter your name"),
              SizedBox(height: 20.0,),
              buildInputFiled("Enter your email"),
              SizedBox(height: 20,),
              buildInputFiled("Enter your password"),
              SizedBox(height: 20,),
              buildInputFiled("Confirm your password"),
              SizedBox(height: 30,),
              SizedBox(
                width: 350,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                    )
                  ),
                  child: Text("Create your account", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),)),
              ),
              SizedBox(height: 25,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> LoginPage())
                  );
                },
                child: Text("Already have an account? Log in", style: TextStyle(
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