import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vertical_landing_page/ui/widgets/custom_background.dart';
import 'package:vertical_landing_page/ui/widgets/custom_icon_button.dart';

class ContactView extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Stack
    (
      children: 
      [
        Background(),
        _MainContent()
      ],
    );
  }
}

class _MainContent extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      padding: EdgeInsets.only(top: 20),
      child: Padding
      (
        padding: const EdgeInsets.only(right: 15),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            FittedBox
            (
              fit: BoxFit.contain,
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Text('04. ', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.greenAccent)),
                  Text('Get in Touch', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 15),
            ConstrainedBox
            (
              constraints: const BoxConstraints(maxWidth: 450),
              child: Column
              (
                children: 
                [
                  Image.asset('me3.png', height: 150, width: 150),
                  Text
                  (
                    'Whether you have a question or just want to say hi, I’ll try my best to get back to you!\n\n ' +
                    'You may e-mail me directly. '+ 
                    'While you\'re at it, feel free to download my resume to know more about my employment and education history.',
                    maxLines: 10,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter
                    (
                      color: Colors.white, 
                      fontSize: 17
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 75),
            Row
            (
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
              [
                Flexible(child: SizedBox(width: 80, child: Divider(color: Colors.greenAccent, indent: 5, endIndent: 15, thickness: 1.5))),
                CustomIconButton(icon: FontAwesomeIcons.envelope, onPressed: (){_sendEmail();}),
                CustomIconButton(icon: FontAwesomeIcons.githubAlt, onPressed: (){_launchUrl('https://github.com/CarlosCasas1090');}),
                CustomIconButton(icon: FontAwesomeIcons.facebookF, onPressed: (){_launchUrl('https://www.facebook.com/jcarlos1090/');}),
                CustomIconButton(icon: FontAwesomeIcons.linkedinIn, onPressed: (){_launchUrl('https://www.linkedin.com/in/juan-carlos-casas-a3298b9a/');}),
                Flexible(child: SizedBox(width: 80, child: Divider(color: Colors.greenAccent, indent: 5, endIndent: 15, thickness: 1.5))),
              ],
            ),
            Expanded(child: SizedBox()),
            Column
            (
              crossAxisAlignment: CrossAxisAlignment.center,
              children: 
              [
                Text('Designed and built by Juan Carlos Casas', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 12)),
                Text('2020', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 12)),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _launchUrl(String url) async
  {
    await launch(url);
  }

  void _sendEmail() async
  {
    final mailtoLink = 'mailto:carloscasas305@gmail.com';
    await launch(mailtoLink);
  }
}