import 'package:itec/services/auth.dart';
import 'package:itec/shared/constants.dart';
import 'package:flutter/material.dart';

import '../../shared/loading.dart';

class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({required this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // Text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Color.fromARGB(255, 188, 215, 190),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.0,
        title: Text('Sign in to Brew Crew'),
        actions: [
          TextButton.icon(
              onPressed: () {
                widget.toggleView();
              },
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              label: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                validator: (value) => value!.isEmpty ? 'Enter an email' : null,
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
                decoration: textInputDecoration.copyWith(hintText: 'Email'),
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                style: TextStyle(
                  color: Colors.white,
                ),
                validator: (value) =>
                    value!.length < 6 ? 'Enter a password 6+ chars long' : null,
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                decoration: textInputDecoration.copyWith(hintText: 'Password'),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                child: Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    setState(() {
                      loading = true;
                    });
                    dynamic result =
                        await _auth.signInWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(() {
                        error = 'COULD NOT SIGN IN WITH THOSE CREDENTIALS';
                        loading = false;
                      });
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 127, 211, 130),
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}