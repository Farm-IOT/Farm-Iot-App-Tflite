import 'package:flutter/material.dart';
import 'package:machine_learning_flutter_app/screens/image_analysis.dart';
import 'package:machine_learning_flutter_app/screens/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final pwdController = TextEditingController();

  @override
  void dispose(){
    emailController.dispose();
    pwdController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Login Page - Farm IOT",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
        ),
      ),
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.brown.shade800,
                  child: Text("A"),
                ),
              ),
              SizedBox(height: 30.0,),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                controller: pwdController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Forgot password?',style: TextStyle(fontSize: 12.0),),
                    RaisedButton(
                      child: Text('Login'),
                      color: Colors.green,
                      onPressed: (){
                        if(emailController.text == "admin" && pwdController.text == "admin"){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ImageAnalyse()));
                        }
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height:20.0),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                },
                child: Text.rich(
                  TextSpan(
                      text: 'Don\'t have an account? ',
                      children: [
                        TextSpan(
                          text: 'Signup',
                          style: TextStyle(
                              color: Colors.green
                          ),
                        ),
                      ]
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}