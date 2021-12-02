import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconButton extends StatefulWidget 
{
  final IconData icon;
  final Function? onPressed;

  CustomIconButton({Key? key, required this.icon, this.onPressed}) : super(key: key);

  @override
  _CustomIconButtonState createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> 
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
          child: FaIcon(widget.icon, size: 25, color: isHover? Colors.greenAccent : Colors.grey)
        ),
      ),
    );
  }
}