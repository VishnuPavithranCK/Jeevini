import 'package:flutter/material.dart';
import 'package:jeevini/widgets/bottom_bar.dart';
import 'package:jeevini/widgets/custom_button.dart';
import 'package:jeevini/widgets/custom_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  static const String routeName = 'signInPage';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _auth = FirebaseAuth.instance;
   String LogEmail;
   String LoginPass;
  bool spinner = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Opacity(
                    opacity: 0.8,
                    child: Image(
                      image: AssetImage(
                        'lib/assets/backimg1.jpg',
                      ),
                      fit: BoxFit.fitHeight,
                    )),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 5.0,
                left: 30,
                child: Container(
                  child: Text(
                    'Welcome!!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2.5,
                child: Container(
                  padding: EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        onChanged: (login) {
                      LogEmail = login;
                    },
                        hintText: 'Email',
                        obscureText: false,
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        onChanged: (logpass) {
                      LoginPass = logpass;
                    },
                        hintText: 'Password',
                        obscureText: true,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child:Text('Forgot Password?',style: TextStyle(color: Colors.blueAccent,fontSize: 15),),
                            onTap:(){}
                          )
                        ],
                      ),
                       SizedBox(height: 10),
                      CustomButton(
                        buttonText: 'Sign In',
                          onPressed: () async {
                      setState(() {
                        spinner = true;
                      });
                      try {
                        final user = await _auth.signInWithEmailAndPassword(
                            email: LogEmail, password: LoginPass);
                        if (user != null) {
                          Navigator.pushNamed(context, BottomBar.routeName);
                        }
                        setState(() {
                          spinner = false;
                        });
                      } catch (e) {
                        print(e);
                      }
                    },
                        ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          horizontalLine(),
                          Text(
                            'or Sign In with',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          horizontalLine(),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 27,
                              width: 27,
                              child: Image.asset('lib/assets/google.png'),
                            ),
                            SizedBox(width: 20),
                            Container(
                              height: 27,
                              width: 27,
                              child: Image.asset('lib/assets/facebook.png'),
                            ),
                          ]),
                          SizedBox(height:20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text("Don't have an Account?"),
                              InkWell(
                                child:Text('Sign Up',style:TextStyle(color: Colors.yellow[800])),
                                onTap:(){}
                              )
                            ]
                          )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: 90,
          height: 1.0,
          color: Colors.black26.withOpacity(.4),
        ),
      );
}
