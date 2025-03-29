import 'package:flutter/material.dart';
import 'package:user_manager_frontend/screens/login_page.dart';

class SignUpPage extends StatefulWidget{
  @override
  signUpState createState() => signUpState();
}

class signUpState extends State<SignUpPage>{

  final formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose(){
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  Widget buildInputFiled(String label, TextEditingController controller, String? Function(String?)? validator){
    return SizedBox(
      width: 350,
      child: TextFormField(
        controller: controller,
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
        validator: validator,
      ),
    );
  }

  String ? nameValidator(String ? value){
    if(value == null || value.trim().isEmpty){
      return "Name is required";
    }
    
    return null;
  }


  String ? emailValidator(String ? value){
    if(value == null || value.trim().isEmpty){
      return "Email is required";
    }

    if(!RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$").hasMatch(value)){
      return "Enter a valid email addresss";
    }

    return null;
  }

  String ? passwordValidator(String ? value){
    if(value == null || value.trim().isEmpty){
      return "Password is required";
    }

    if(value.length < 6){
      return "Password must contain at least 6 characters";
    }

    return null;
  }


  String ? confirmPasswordValidator(String ? value){
    if(value == null || value.trim().isEmpty){
      return "Password conformation is required";
    }

    if(value != passwordController.text){
      return "Password does not match";
    }

    return null;
  }

  void signUpSubmit(){
    if(formKey.currentState!.validate()){
      print("Sign up successfull");
    }
  }

  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create your account", style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 30,),
                buildInputFiled("Enter your name",nameController,nameValidator),
                SizedBox(height: 20.0,),
                buildInputFiled("Enter your email",emailController,emailValidator),
                SizedBox(height: 20,),
                buildInputFiled("Enter your password",passwordController,passwordValidator),
                SizedBox(height: 20,),
                buildInputFiled("Confirm your password",confirmPasswordController,confirmPasswordValidator),
                SizedBox(height: 30,),
                SizedBox(
                  width: 350,
                  child: ElevatedButton(
                    onPressed: (){
                      signUpSubmit();
                    },
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
          )
        ),
      ),
    );
  }
}