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
  String position = 'Mechatronics Engineer';
  String dates = 'Jul 2008 - May 2012';
  String place = 'Ramos Arizpe COAH';
  String description = '• BS degree in Mechatronics engineering.\n\n• Internship in an international automotive company for a period of 4 months.';

  @override
  Widget build(BuildContext context) 
  {
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
            Row
            (
              mainAxisAlignment: MainAxisAlignment.start,
              children: 
              [
                Flexible(child: Text('02. ', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.greenAccent))),
                Flexible(child: Text('Experience', style: GoogleFonts.robotoMono(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold))),
              ],
            ),
            Column
            (
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              [
                Column
                (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: 
                  [
                    SizedBox(height: 30),
                    Text('Education', style: GoogleFonts.robotoMono(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                    Padding
                    (
                      padding: const EdgeInsets.all(4),
                      child: CustomTextButton
                      (
                        text: 'Universidad Tecnologica de Coahuila', 
                        onPressed: ()
                        {
                          setState(() 
                          {
                            position = 'Mechatronics Engineer';
                            dates = 'Jul 2008 - May 2012';
                            place = 'Ramos Arizpe COAH';
                            description = '• BS degree in Mechatronics engineering.\n\n• Internship in an international automotive company for a period of 4 months.';
                          });
                        }
                      ),
                    ),
                    SizedBox(height: 30),
                    Text('Jobs', style: GoogleFonts.robotoMono(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                    Wrap
                    (
                      children: 
                      [
                        Padding
                        (
                          padding: const EdgeInsets.all(4),
                          child: CustomTextButton
                          (
                            text: 'Mahle', 
                            onPressed: ()
                            {
                              setState(() 
                              {
                                position = 'Electronics Technician';
                                dates = 'May 2010 - Jan 2011';
                                place = 'Ramos Arizpe COAH';
                                description = '• Troubleshoot electronic systems and perform repair.\n\n• Implemented preventive maintenance plans weekly.\n\n• Experience using multimeters, power supplies, signal generators and oscilloscopes.\n\n• Perform routine and non-routine maintenance.';
                              });
                            }
                          ),
                        ),
                        Padding
                        (
                          padding: const EdgeInsets.all(4),
                          child: CustomTextButton
                          (
                            text: 'Induma SA de CV', 
                            onPressed: ()
                            {
                              setState(() 
                              {
                                position = 'Controls Engineer';
                                dates = 'May 2012 - Jul 2014';
                                place = 'Saltillo COAH';
                                description = '• Created electrical schematics using AutoCAD Electrical software.\n\n• Use of Siemens, Allen Bradley and Mitshubishi PLCs.\n\n• Programming and commissioning of new equipment on customers site.\n\n• Completed as many as 10 design projects each year for different customers.';
                              });
                            }
                          ),
                        ),
                        Padding
                        (
                          padding: const EdgeInsets.all(4),
                          child: CustomTextButton
                          (
                            text: 'Mubea de Mexico', 
                            onPressed: ()
                            {
                              setState(() 
                              {
                                position = 'Maintenance and Controls Engineer';
                                dates = 'Jul 2014 - Aug 2018';
                                place = 'Ramos Arizpe COAH';
                                description = '• Supervised daily operations, including employee performance, preventive maintenance and safety.\n\n• Maintained Electrical equipment by troubleshooting breakdowns and performing preventive maintenance.\n\n• Designed SCADA system using Indusoft software.';
                              });
                            }
                          ),
                        ),
                        Padding
                        (
                          padding: const EdgeInsets.all(4),
                          child: CustomTextButton
                          (
                            text: 'Mubea Inc', 
                            onPressed: ()
                            {
                              setState(() 
                              {
                                position = 'Controls Engineer';
                                dates = 'Aug 2018 - Current';
                                place = 'Florence KY';
                                description = '• Develop electrical control systems to maintain and improve the process.\n\n• Create, test and modify robot sequences.\n\n• Use of Siemens and Beckhoff PLCs.\n\n• Use of Cognex and Keyence vision Systems.\n\n• Provide technical support to maintenance techs.\n\n• Upgrade PLC and HMIs.\n\n• Created client-server applications using Visual Studio C# and SQL databases.';
                              });
                            }
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Column
                (
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: 
                  [
                    Text(position, style: GoogleFonts.inter(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                    Text(dates, style: GoogleFonts.robotoMono(fontSize: 16, color: Colors.grey)),
                    Text(place, style: GoogleFonts.robotoMono(fontSize: 15, color: Colors.grey)),
                    SizedBox(height: 50),
                    FittedBox
                    (
                      fit: BoxFit.contain,
                      child: Padding
                      (
                        padding: const EdgeInsets.all(4),
                        child: Text(description, style: GoogleFonts.inter(fontSize: 16, color: Colors.white)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}