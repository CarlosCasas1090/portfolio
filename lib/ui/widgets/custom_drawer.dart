import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';

class DrawerMenu extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return Drawer
    (  
      child: Container
      (
        color: Colors.black87,
        child: ListView
        (
          padding: EdgeInsets.zero,
          children:
          [
            DrawerHeader
            (
              child: Container
              (
                height: 50,
              ),
            ),
            _createSection(context, pageProvider, 'Home', 0),
            _createSection(context, pageProvider, 'About', 1),   
            _createSection(context, pageProvider, 'Experience', 2),   
            _createSection(context, pageProvider, 'Projects', 3),   
            _createSection(context, pageProvider, 'Contact', 5), 
          ],
        ),
      ),
    );
  }

  Widget _createSection(BuildContext context, PageProvider provider, String name, int page)
  {
    return Column
    (
      children:
      [
        ListTile
        (
          leading: Text('0$page.', style: GoogleFonts.robotoMono(color: Colors.greenAccent, fontSize: 17)),
          title: Text(name, style: GoogleFonts.robotoMono(color: Colors.white, fontSize: 17)),
          onTap: ()
          {
            provider.goTo(page);
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}