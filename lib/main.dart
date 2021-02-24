import 'package:flutter/material.dart';
import 'package:machine_learning_flutter_app/screens/login.dart';
import 'package:machine_learning_flutter_app/screens/signup.dart';

void main(){
  runApp(MaterialApp(home: WelcomePage(),));
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("Welcome to Farm IoT App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20
              ),
            ),
            SizedBox(height: 25,),
            FlatButton(
              color: Colors.green,
              child: Text("Login",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
            ),
            FlatButton(
              color: Colors.green,
              child: Text("Sign Up",
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
