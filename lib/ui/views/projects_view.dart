import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/widgets/contact_info.dart';
import 'package:vertical_landing_page/ui/widgets/custom_background.dart';
import 'package:vertical_landing_page/ui/widgets/scroll_gif.dart';

class ProjectsView extends StatelessWidget 
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
        ScrollGif(page: 4)
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
      padding: const EdgeInsets.only(left: 35, top: 20),
      child: Padding
      (
        padding: const EdgeInsets.only(right: 15),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            FittedBox
            (
              fit: BoxFit.contain,
              child: Row
              (
                mainAxisAlignment: MainAxisAlignment.start,
                children: 
                [
                  Text('03. ', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.greenAccent)),
                  Text('Projects I have developed', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container
            (
              padding: EdgeInsets.only(right: 100),
              alignment: Alignment.centerRight,
              child: Stack
              (
                children: 
                [
                  size.width > 1200
                  ? Image.asset('itg.png', width: 600, height: size.height * 0.35)
                  : Container(),
                  Container
                  (
                    child: Column
                    (
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: 
                      [
                        Text
                        (
                          'Featured Project',
                          style: GoogleFonts.robotoMono(color: Colors.greenAccent, fontSize: 16)
                        ),
                        Text
                        (
                          'Temperature Tracking',
                          style: GoogleFonts.inter(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                        SizedBox(height: 20),
                        Container
                        (
                          padding: EdgeInsets.all(20),
                          width: 1200,
                          height: size.height * 0.2,
                          color: Colors.black.withOpacity(0.3),
                          child: Column
                          (
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: 
                            [
                              FittedBox
                              (
                                fit: BoxFit.contain,
                                child: Text
                                (
                                  'Software to visualize and record on a database all temperatures\n read by 4 pyrometers installed along the line', 
                                  style: GoogleFonts.inter(fontSize: 19, color: Colors.white),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              Flexible(child: SizedBox(height: 20)),
                              Text
                              (
                                '• C#  • SQL database  • Sharp7 library • Siemens Step 7', 
                                style: GoogleFonts.inter(fontSize: 12, color: Colors.greenAccent),
                                textAlign: TextAlign.end,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            ConstrainedBox
            (
              constraints: BoxConstraints(maxWidth: 1200),
              child: Container
              (
                padding: EdgeInsets.only(right: 100),
                alignment: Alignment.centerLeft,
                child: Stack
                (
                  children: 
                  [
                    size.width > 1200
                    ? Align(alignment: Alignment.centerRight, child: Image.asset('sp.png', width: 600, height: size.height * 0.35))
                    : Container(),
                    Container
                    (
                      child: Column
                      (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: 
                        [
                          Text
                          (
                            'Featured Project',
                            style: GoogleFonts.robotoMono(color: Colors.greenAccent, fontSize: 16)
                          ),
                          Text
                          (
                            'Software Update',
                            style: GoogleFonts.inter(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                          ),
                          SizedBox(height: 20),
                          Container
                          (
                            padding: EdgeInsets.all(20),
                            width: 1200,
                            height: size.height * 0.2,
                            color: Colors.black.withOpacity(0.3),
                            child: Column
                            (
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: 
                              [
                                FittedBox
                                (
                                  fit: BoxFit.contain,
                                  child: Text
                                  (
                                    'Update obsolete machine visualization software,\nimproved response time and troubleshooting issues by\nshowing operators a more organized UI', 
                                    style: GoogleFonts.inter(fontSize: 19, color: Colors.white),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                                Flexible(child: SizedBox(height: 20)),
                                Text
                                (
                                  '• C#  • Sharp7 library • Siemens Step 7', 
                                  style: GoogleFonts.inter(fontSize: 12, color: Colors.greenAccent),
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}