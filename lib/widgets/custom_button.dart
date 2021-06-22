import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  CustomButton({@required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return  Container(
                          width: 120,
                          height: 40,
                          child: RaisedButton(
                            elevation: 5,
                            onPressed: (){},
                            child: Text(buttonText,style:TextStyle(color: Colors.white,fontSize: 20)),
                            shape: StadiumBorder(),
                            color:Color(0x0FF44ACE5)
                             ),
                        );
  }
}