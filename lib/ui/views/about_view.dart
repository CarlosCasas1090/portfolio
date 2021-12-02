import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/widgets/contact_info.dart';
import 'package:vertical_landing_page/ui/widgets/custom_background.dart';
import 'package:vertical_landing_page/ui/widgets/scroll_gif.dart';

class AboutView extends StatelessWidget 
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
        ScrollGif(page: 2)
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
      padding: const EdgeInsets.only(left: 35, top: 30),
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
              Flexible(child: Text('01. ', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.greenAccent))),
              Flexible(child: Text('About me', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold))),
            ],
          ),
          SizedBox(height: 25),
          Row
          (
            children: 
            [
              Flexible
              (
                child: ConstrainedBox
                (
                  constraints: const BoxConstraints(maxWidth: 750),
                  child: Text
                  (
                    'Versatile controls engineer with expertise in Siemens and Beckhoff PLCs, as well as Motoman robots. Excellent communication ' +
                    'and problem solving skills with the ability to handle complex projects.\n\n' +
                    'Energetic and hardworking with the ability to multitask. Proficient in SQL databases and computer programming languages. '+
                    'I\'m interested in design, develope and maintain industrial equipment and/or its software. ' +
                    'I can program, test and modify new or existing production equipment.',
                    maxLines: 12,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.inter
                    (
                      color: Colors.grey, 
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              size.width > 950 
              ? Flexible
              (
                child: Padding
                (
                  padding: const EdgeInsets.only(left: 50),
                  child: Hero
                  (
                    tag: 'pic',
                    child: ClipOval(child: Image.asset('me2.jpg', width: 350, height: 350)),
                  ),
                )
              )
              : SizedBox()
            ],
          ),
          Flexible
          (
            child: Padding
            (
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: Text('Main Skills', style: GoogleFonts.robotoMono(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
            )
          ),
          ConstrainedBox
          (
            constraints: BoxConstraints(maxWidth: 850),
            child: Row
            (
              mainAxisAlignment: MainAxisAlignment.start,
              children: 
              [
                Flexible
                (
                  child: Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                    [
                      FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Padding
                        (
                          padding: const EdgeInsets.all(8),
                          child: Row
                          (
                            children: 
                            [
                              Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                              Text('Siemens TIA Portal', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                      FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Padding
                        (
                          padding: const EdgeInsets.all(8),
                          child: Row
                          (
                            children: 
                            [
                              Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                              Text('Beckhoff TwinCAT', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                      FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Padding
                        (
                          padding: const EdgeInsets.all(8),
                          child: Row
                          (
                            children: 
                            [
                              Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 20)),
                              Text('Industial Robots', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                      FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Padding
                        (
                          padding: const EdgeInsets.all(8),
                          child: Row
                          (
                            children: 
                            [
                              Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                              Text('Vision systems', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                      FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Padding
                        (
                          padding: const EdgeInsets.all(8),
                          child: Row
                          (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: 
                            [
                              Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                              Text('Electrical/Electronics\ntroubleshoot', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(child: SizedBox(width: 60)),
                Flexible
                (
                  child: Column
                  (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: 
                    [
                      FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Padding
                        (
                          padding: const EdgeInsets.all(8),
                          child: Row
                          (
                            children: 
                            [
                              Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                              Text('Visual Studio C#', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                      FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Padding
                        (
                          padding: const EdgeInsets.all(8),
                          child: Row
                          (
                            children: 
                            [
                              Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                              Text('SQL databases', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                      FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Padding
                        (
                          padding: const EdgeInsets.all(8),
                          child: Row
                          (
                            children: 
                            [
                              Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 20)),
                              Text('Client-Server applications', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                      FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Padding
                        (
                          padding: const EdgeInsets.all(8),
                          child: Row
                          (
                            children: 
                            [
                              Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                              Text('Process improvemet', style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                      FittedBox
                      (
                        fit: BoxFit.contain,
                        child: Padding
                        (
                          padding: const EdgeInsets.all(8),
                          child: Row
                          (
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: 
                            [
                              Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                              Text('Project organization', maxLines: 3, style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible
          (
            child: Padding
            (
              padding: const EdgeInsets.only(top: 20, bottom: 15),
              child: Text('Hobbies', style: GoogleFonts.robotoMono(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
            )
          ),
          FittedBox
          (
            fit: BoxFit.contain,
            child: Padding
            (
              padding: const EdgeInsets.all(8),
              child: Row
              (
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: 
                [
                  Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                  Text('Traveling ✈️', maxLines: 3, style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16)),
                  SizedBox(width: 25),
                  Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                  Text('Reading 📚', maxLines: 3, style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16)),
                  SizedBox(width: 25),
                  Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                  Text('Videogames 🎮', maxLines: 3, style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16)),
                  SizedBox(width: 25),
                  Text('• ', style: TextStyle(color: Colors.greenAccent, fontSize: 16)),
                  Text('Soccer ⚽', maxLines: 3, style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16)),
                  SizedBox(width: 25),
                  Text('Programming 💻', maxLines: 3, style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 16)),
                  SizedBox(width: 25)
                ],
              ),
            ),
          ),
          size.width <= 950 
          ? Padding
          (
            padding: const EdgeInsets.only(top: 30),
            child: Align(alignment: Alignment.center, child: Hero(tag: 'pic', child: ClipOval(child: Image.asset('me2.jpg', width: 200, height: 200)))),
          )
          : Container()
        ],
      ),
    );
  }
}