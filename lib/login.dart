import 'package:flutter/material.dart';
import 'navigation.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final String user = 'admin';
  final String pass = 'admin';

  TextEditingController userText = TextEditingController();
  TextEditingController passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tugas4 - TPM',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Sans-Serif',
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 300,
                width: 300,
                child: Image.asset('assets/images/login.png'),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(100, 20, 100, 0),
                child: TextField(
                  controller: userText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(100, 10, 100, 0),
                child: TextField(
                  obscureText: true,
                  controller: passText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                  height: 80,
                  width: 150,
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                      ),
                    ),
                    
                    child: const Text('Log In'),
                    onPressed: () {
                      ceklogin(context);
                    },
                  )),
            ],
          ),
        ));
  }

  void ceklogin(BuildContext context) {
    if (userText.text == user && passText.text == pass) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavPage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('User dan Password Anda salah..'),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
}
