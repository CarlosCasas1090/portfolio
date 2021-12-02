import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';
import 'package:vertical_landing_page/ui/views/about_view.dart';
import 'package:vertical_landing_page/ui/views/contact_view.dart';
import 'package:vertical_landing_page/ui/views/home_view.dart';
import 'package:vertical_landing_page/ui/views/projects_view.dart';
import 'package:vertical_landing_page/ui/views/experience_view.dart';
import 'package:vertical_landing_page/ui/views/projects_view2.dart';
import 'package:vertical_landing_page/ui/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    final size  = MediaQuery.of(context).size;

    return Scaffold
    (
      appBar: AppBar
      (
        automaticallyImplyLeading: size.width <= 850,
        backgroundColor: Colors.black87,
        elevation: 0,
        title: size.width > 850
            ? _PagesBar()
            : Container()
      ),
      drawer: size.width <= 850
            ? DrawerMenu()
            : Container(),
      body: Container
      (
        child: _HomeBody(),
      ),
    );
  }
}

class _PagesBar extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return Padding
    (
      padding: const EdgeInsets.only(left: 20),
      child: Wrap
      (
        crossAxisAlignment: WrapCrossAlignment.center,
        direction: Axis.horizontal,
        children: 
        [
          pageNumber('00.'),
          pageName(pageProvider, 'Home', 0),
          const SizedBox(width: 30),
          pageNumber('01.'),
          pageName(pageProvider, 'About', 1),
          const SizedBox(width: 30),
          pageNumber('02.'),
          pageName(pageProvider, 'Experience', 2),
          const SizedBox(width: 30),
          pageNumber('03.'),
          pageName(pageProvider, 'Projects', 3),
          const SizedBox(width: 30),
          pageNumber('04.'),
          pageName(pageProvider, 'Contact', 5),
          const SizedBox(width: 50),
          TextButton
          (
            child: Text('Download Resume', style: GoogleFonts.robotoMono(color: Colors.white)), 
            style: ButtonStyle
            (
              padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
              shape: MaterialStateProperty.all
              (
                RoundedRectangleBorder
                (
                  borderRadius: BorderRadius.circular(10), 
                  side: const BorderSide(color: Colors.greenAccent)
                )
              )
            ),
            onPressed: (){}, 
          )
        ],
      ),
    );
  }

  Widget pageNumber(String pageNumber) => Text(pageNumber, style: GoogleFonts.robotoMono(color: Colors.greenAccent, fontSize: 15));
  Widget pageName(PageProvider provider, String pageName, int index) => TextButton
  (
    child: Text(pageName, style: GoogleFonts.robotoMono(color: Colors.white, fontSize: 15)),
    onPressed: (){provider.goTo(index);},
  );
}


class _HomeBody extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return PageView
    (
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      children: 
      [
        HomeView(),
        AboutView(),
        ExperienceView(),
        ProjectsView(),
        ProjectsView2(),
        ContactView(),
      ],
    );
  }
}