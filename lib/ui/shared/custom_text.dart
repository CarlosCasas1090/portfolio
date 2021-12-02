import 'package:flutter/material.dart';

class CustomText extends StatefulWidget 
{
  final String text;
  final Function onPressed;
  CustomText({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> 
{
  bool isHover = false;

  @override
  Widget build(BuildContext context) 
  {
    return Container();
  }
}