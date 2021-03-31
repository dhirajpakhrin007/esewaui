import 'package:esewa_ui/HomePage.dart';
import 'package:esewa_ui/Sign_up.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email, password;
  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    email = new TextEditingController();
    password = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Container(
            height: _height,
            width: _width,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset(
                  'images/logo.png',
                  height: 100.0,
                  width: 200.0,
                ),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  'Sign in to continue',
                  style: TextStyle(
                    wordSpacing: 4.0,
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'eSewa ID',
                        style: TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFieldClass(
                        cont: email,
                        visible: false,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Password or MPIN',
                        style: TextStyle(fontSize: 16.0, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFieldClass(cont: password, visible: true),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot MPIN?',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: () async {
                        if (_formKey.currentState.validate()) {
                          final user = await _auth.signInWithEmailAndPassword(
                              email: email.text, password: password.text);

                          if (user != null) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Login Successful')));
                          }
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Login',
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
                SizedBox(
                  height: 70.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Register for free',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
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
  final TextEditingController cont;
  final bool visible;

  TextFieldClass({@required this.cont, @required this.visible});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: visible,
      controller: cont,
      validator: (value) {
        if (value.isEmpty || value == null) {
          return 'Required';
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: 'Email / Mobile Numnber',
        fillColor: Colors.green,
        border: OutlineInputBorder(
          borderRadius: new BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
