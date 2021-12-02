import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/widgets/contact_info.dart';
import 'package:vertical_landing_page/ui/widgets/custom_background.dart';
import 'package:vertical_landing_page/ui/widgets/custom_text_button.dart';
import 'package:vertical_landing_page/ui/widgets/scroll_gif.dart';

class ExperienceView extends StatelessWidget 
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
        _MainContent(),
        ScrollGif(page: 3)
      ],
    );
  }
}


class _MainContent extends StatefulWidget 
{
  @override
  State<_MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<_MainContent> 
{
  String position = '', dates = '', description = '';

  @override
  Widget build(BuildContext context) 
  {
    final size  = MediaQuery.of(context).size;

    return Container
    (
      padding: const EdgeInsets.only(left: 35, top: 50),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          Row
          (
            mainAxisAlignment: MainAxisAlignment.start,
            children: 
            [
              Flexible(child: Text('02. ', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.greenAccent))),
              Flexible(child: Text('Experience', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold))),
            ],
          ),
          const SizedBox(height: 30),
          Column
          (
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: 
            [
              Wrap
              (
                children: 
                [
                  Padding
                  (
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextButton
                    (
                      text: 'Mubea Inc', 
                      onPressed: ()
                      {
                        setState(() 
                        {
                          position = 'Controls engineer';
                          dates = 'Aug 2018 - Present';
                          description = '✅ x coasas se hicieron\n\n✅ experience gainedss\n\n✅ lsdsdsdsres';
                        });
                      }
                    ),
                  ),
                  Padding
                  (
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextButton
                    (
                      text: 'Mubea de Mexico', 
                      onPressed: ()
                      {
                        setState(() 
                        {
                          position = 'Maintenance engineer';
                          dates = 'Aug 2014 - Aug 2018';
                          description = '✅ y coasas se hicieron\n\n✅ experience gainedss\n\n✅ lores';
                        });
                      }
                    ),
                  ),
                  Padding
                  (
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextButton(text: 'Induma SA de CV', onPressed: (){}),
                  ),
                  Padding
                  (
                    padding: const EdgeInsets.all(8.0),
                    child: CustomTextButton(text: 'Mahle', onPressed: (){}),
                  )
                ],
              ),
              SizedBox(height: 50),
              Column
              (
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: 
                [
                  Text(position, style: GoogleFonts.inter(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(dates, style: GoogleFonts.robotoMono(fontSize: 15, color: Colors.grey)),
                  SizedBox(height: 50),
                  Text(description, style: GoogleFonts.inter(fontSize: 20, color: Colors.white)),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}