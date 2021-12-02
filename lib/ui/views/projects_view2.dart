import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/widgets/contact_info.dart';
import 'package:vertical_landing_page/ui/widgets/custom_background.dart';
import 'package:vertical_landing_page/ui/widgets/scroll_gif.dart';

class ProjectsView2 extends StatelessWidget 
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
        ScrollGif(page: 5)
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
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.start,
        children: 
        [
          Container
          (
            padding: EdgeInsets.only(right: 100),
            alignment: Alignment.centerRight,
            child: Stack
            (
              children: 
              [
                size.width > 1200
                ? Image.asset('labels.png', width: 600, height: size.height * 0.35)
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
                        'Labels Dispenser',
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
                                'Lightweight application to print labels used on finished products.\nCommuniactes to a Sato or Zebra printer through TCP protocol and\n sends label data of the desired part number, then automatically emails\nto supervisors and managers of what was printed', 
                                style: GoogleFonts.inter(fontSize: 19, color: Colors.white),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            Flexible(child: SizedBox(height: 20)),
                            Text
                            (
                              '• C#  • Sato AllinOne  • TCP protocol', 
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
                  ? Align(alignment: Alignment.centerRight, child: Image.asset('scan.png', width: 600, height: size.height * 0.35))
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
                          'Finished Goods Track',
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
                                  'Software to scan and save on a DB every finished part\nbarcode, this way every single piece can be tracked, improving\nquality and control. Once the shipping container is full of parts\nall data is sent to print a shipping label', 
                                  style: GoogleFonts.inter(fontSize: 19, color: Colors.white),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Flexible(child: SizedBox(height: 20)),
                              Text
                              (
                                '• SQL  • C#  • Datalogic', 
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
    );
  }
}