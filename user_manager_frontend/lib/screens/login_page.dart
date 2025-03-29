import 'package:flutter/material.dart';
import 'package:user_manager_frontend/screens/sign_up_page.dart';

class LoginPage extends StatefulWidget {
    @override
    LoginState createState() => LoginState();
}

class LoginState extends State<LoginPage> {

    final TextEditingController userNameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    @override
    void dispose() {
        userNameController.dispose();
        passwordController.dispose();
        super.dispose();
    }

    String? validateEmail(String? value) {
        if (value == null || value.trim().isEmpty) {
            return "Email is required";
        }

        if (!RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$").hasMatch(value)) {
            return "Enter a valid email address";
        }

        return null;
    }

    String? validatePassword(String? value) {
        if (value == null || value.trim().isEmpty) {
            return "Password is required";
        }

        if (value.length < 6) {
            return "Password must contain at least 6 characters";
        }

        return null;
    }

    void submitLogin() {
        if (formKey.currentState!.validate()) {
            print("Login Successful");
        }
    }

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.white,
                body: Center(
                    child: Form(
                        key: formKey,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text("Welcome back!", style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0,
                                )),
                                SizedBox(height: 30),
                                SizedBox(
                                    width: 350,
                                    child: TextFormField(
                                        controller: userNameController,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: "Enter your email",
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
                                        validator: validateEmail,
                                    ),
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                    width: 350,
                                    child: TextFormField(
                                        controller: passwordController,
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
                                        validator: validatePassword,
                                    ),
                                ),
                                SizedBox(height: 20),
                                SizedBox(
                                    width: 350,
                                    child: ElevatedButton(
                                        onPressed: () {
                                            submitLogin();
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.blueGrey,
                                            padding: EdgeInsets.symmetric(vertical: 20)
                                        ),
                                        child: Text("Login", style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        )),
                                    ),
                                ),
                                SizedBox(height: 20),
                                GestureDetector(
                                    onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => SignUpPage())
                                        );
                                    },
                                    child: Text("Do not have an account? Sign Up", style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    )),
                                )
                            ],
                        ),
                    ),
                ),
            ),
        );
    }
}