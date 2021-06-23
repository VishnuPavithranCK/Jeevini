import 'package:flutter/material.dart';
import 'package:jeevini/models/constants.dart';

class CustomTextField extends StatelessWidget {
 final String hintText;
final bool obscureText;
final Function onChanged;
 CustomTextField({@required this.hintText,@required this.obscureText,@required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
                        height: 40,
                        child: TextField(
                          
                          onChanged: onChanged,
                           obscureText: obscureText,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(

                            filled: true,
                            fillColor: Color(0xffAB9E8E),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            hintText: hintText,
                            hintStyle: TextStyle(color: Colors.white),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.brown,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.brown,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                      );
  }
}