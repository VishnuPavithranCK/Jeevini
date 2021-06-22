import 'package:flutter/material.dart';
import 'package:jeevini/widgets/custom_button.dart';
import 'package:jeevini/widgets/custom_text_field.dart';


class SignUP extends StatefulWidget {
 
  @override
  _SignUPState createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
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
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        hintText: 'Email',
                        obscureText: false,
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        hintText: 'Password',
                        obscureText: true,
                      ),
                      SizedBox(height: 10),
                      CustomTextField(
                        hintText: 'Confirm Password',
                        obscureText: true,
                      ),
                      SizedBox(height: 10),
                      CustomButton(buttonText: 'Sign Up'),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          horizontalLine(),
                          Text(
                            'or sign up with',
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
                              Text('Have an account?'),
                              InkWell(
                                child:Text('Sign In',style:TextStyle(color: Colors.yellow[800])),
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