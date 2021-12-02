import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/widgets/contact_info.dart';
import 'package:vertical_landing_page/ui/widgets/custom_background.dart';

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
        ContactInfo(),
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
    final size  = MediaQuery.of(context).size;

    return Container
    (
      padding: const EdgeInsets.only(left: 35, top: 70),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.center,
        children: 
        [
          Row
          (
            mainAxisAlignment: MainAxisAlignment.start,
            children: 
            [
              Flexible(child: Text('04. ', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.greenAccent))),
              Flexible(child: Text('Get in Touch', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold))),
            ],
          ),
          const SizedBox(height: 30),
          Row
          (
            children: 
            [
              Flexible
              (
                child: ConstrainedBox
                (
                  constraints: const BoxConstraints(maxWidth: 700),
                  child: Text
                  (
                    'Versatile controls engineer with expertise in Siemens and Beckhoff PLCs, as well as Motoman robots. Excellent communication and problem solving skills with the ability to handle complex projects. ' +
                    'Energetic and hardworking with the ability to multitask. Proficient in SQL databases and computer programming languages.' +
                    'Energetic and hardworking with the ability to multitask. Proficient in SQL databases and computer programming languages.'+
                    'Energetic and hardworking with the ability to multitask. Proficient in SQL databases and computer programming languages.',
                    maxLines: 10,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter
                    (
                      color: Colors.white, 
                      fontSize: 20,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
              ),
              size.width > 950 
              ? Flexible(child: Image.asset('me2.jpg', width: 300, height: 300))
              : SizedBox()
            ],
          ),
          size.width <= 950 
          ? Flexible(child: Image.asset('me2.jpg', width: 300, height: 300))
          : Flexible(child: Container())
        ],
      ),
    );
  }
}