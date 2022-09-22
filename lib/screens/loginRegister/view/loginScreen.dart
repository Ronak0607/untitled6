import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text("Email"),
                enabledBorder: OutlineInputBorder()
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Password"),
                enabledBorder: OutlineInputBorder()
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'home');
            }, child: Text("Login")),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context,'register');
              },
              child: Text("Creat Account",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
              ),),
            )


          ],
        ),
      ),
    ));
  }
}
