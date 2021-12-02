import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_icon_button.dart';

class ContactInfo extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    final size  = MediaQuery.of(context).size;
    
    return size.width > 1000
    ? Positioned
      (
        right: 25,
        bottom: 0,
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            CustomIconButton(icon: FontAwesomeIcons.githubAlt, onPressed: (){print('go to Github.com');}),
            CustomIconButton(icon: FontAwesomeIcons.facebookF),
            CustomIconButton(icon: FontAwesomeIcons.linkedinIn),
            const SizedBox(height: 80, child: VerticalDivider(color: Colors.greenAccent, indent: 5, endIndent: 15, thickness: 1.5)),
            RotatedBox(quarterTurns: 1, child: Text('carloscasas305@gmail.com ', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 17))),
            const SizedBox(height: 80, child: VerticalDivider(color: Colors.greenAccent, indent: 5, endIndent: 0, thickness: 1.5)),
          ],
        ),
      )
    :
    Container();
  }
}