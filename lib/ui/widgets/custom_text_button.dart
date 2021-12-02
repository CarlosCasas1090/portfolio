import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextButton extends StatefulWidget 
{
  final String text;
  final Function? onPressed;

  CustomTextButton({Key? key, required this.text, this.onPressed}) : super(key: key);

  @override
  _CustomTextButtonState createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> 
{
  bool isHover = false;

  @override
  Widget build(BuildContext context) 
  {
    return GestureDetector
    (
      onTap: ()
      {
        if (widget.onPressed != null) widget.onPressed!();
      },
      child: MouseRegion
      (
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: Container
        (
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text
          (
            widget.text, 
            style: GoogleFonts.robotoMono
            (
              fontSize: 16, 
              color: isHover? Colors.greenAccent : Colors.grey,
              fontWeight:  isHover? FontWeight.bold : FontWeight.normal
            )
          )
        ),
      ),
    );
  }
}