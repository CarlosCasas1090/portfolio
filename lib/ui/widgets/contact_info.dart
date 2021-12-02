import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vertical_landing_page/ui/widgets/custom_text_button.dart';
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
            CustomIconButton(icon: FontAwesomeIcons.githubAlt, onPressed: (){_launchUrl('https://github.com/CarlosCasas1090');}),
            CustomIconButton(icon: FontAwesomeIcons.facebookF, onPressed: (){_launchUrl('https://www.facebook.com/jcarlos1090/');}),
            CustomIconButton(icon: FontAwesomeIcons.linkedinIn, onPressed: (){_launchUrl('https://www.linkedin.com/in/juan-carlos-casas-a3298b9a/');}),
            const SizedBox(height: 80, child: VerticalDivider(color: Colors.greenAccent, indent: 5, endIndent: 15, thickness: 1.5)),
            RotatedBox
            (
              quarterTurns: 1, 
              child: CustomTextButton
              (
                text: 'carloscasas305@gmail.com', 
                onPressed: ()
                {
                  _sendEmail();
                }
              )
            ),
            const SizedBox(height: 80, child: VerticalDivider(color: Colors.greenAccent, indent: 5, endIndent: 0, thickness: 1.5)),
          ],
        ),
      )
    :
    Container();
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