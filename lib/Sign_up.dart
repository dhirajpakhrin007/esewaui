import 'package:esewa_ui/HomePage.dart';
import 'package:esewa_ui/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formkey = GlobalKey<FormState>();

  final _auth = FirebaseAuth.instance;

  TextEditingController mobile, email, password;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mobile = new TextEditingController();
    email = new TextEditingController();
    password = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    '<',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Registration',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Your mobile number will be your esewa ID',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile Number',
                        style: TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFieldClass(
                        controller: mobile,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Email',
                        style: TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFieldClass(
                        controller: email,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFieldClass(
                        controller: password,
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: null),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'By clicking the checkbox, you agree to our',
                                style: TextStyle(
                                  wordSpacing: 3.0,
                                  color: Colors.grey,
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Terms and Condition',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    '&',
                                    style: TextStyle(
                                      wordSpacing: 3.0,
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Terms and Condition',
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () async {
                          try {
                            if (_formkey.currentState.validate()) {
                              final user =
                                  await _auth.createUserWithEmailAndPassword(
                                      email: email.text,
                                      password: password.text);
                              if (user != null) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePage()));
                              }
                            }
                          } catch (e) {
                            print(e);
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Proceed',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5.0)),
                          height: 50.0,
                          width: _width,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextFieldClass extends StatelessWidget {
  final TextEditingController controller;

  TextFieldClass({this.controller});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value.isEmpty || value == null) {
          return 'Required';
        }
        return null;
      },
      decoration: InputDecoration(
        fillColor: Colors.green,
        border: OutlineInputBorder(
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
