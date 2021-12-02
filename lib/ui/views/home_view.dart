import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vertical_landing_page/ui/widgets/contact_info.dart';
import 'package:vertical_landing_page/ui/widgets/scroll_gif.dart';

class HomeView extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Stack
    (
      children: 
      [
        _Background(),
        ContactInfo(),
        _MainContent(),
        ScrollGif(page: 1)
      ],
    );
  }
}

class _Background extends StatelessWidget 
{
  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      padding: const EdgeInsets.only(right: 50),
      alignment: Alignment.centerRight,
      color: Colors.black.withOpacity(0.81),
      height: double.infinity,
      width: double.infinity,
      child: ColorFiltered
      (
        colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop), 
        child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 800), child: Image.asset('robotmain.png'))
      )
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
      padding: const EdgeInsets.only(left: 35, top: 50),
      child: Padding
      (
        padding: const EdgeInsets.only(right: 20),
        child: Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: 
          [
            Row
            (
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: 
              [
                FittedBox(fit: BoxFit.contain, child: Text('👋 Hello, my name is', style: GoogleFonts.robotoMono(fontSize: 22, color: Colors.greenAccent))),
                const Flexible(child: SizedBox()),
                Flexible(flex: 2, child: Image.asset('me.png', width: 200))
              ],
            ),
            const SizedBox(height: 30),
            FittedBox(fit: BoxFit.contain, child: Text('Juan Carlos Casas', maxLines: 1, overflow: TextOverflow.fade, style: GoogleFonts.robotoMono(color: Colors.white.withOpacity(0.9), fontSize: 52, fontWeight: FontWeight.bold))),
            const SizedBox(height: 15),
            FittedBox(fit: BoxFit.contain, child: Text('I am a mechatronics engineer', maxLines: 1, overflow: TextOverflow.fade,  style: GoogleFonts.robotoMono(color: Colors.grey, fontSize: 52, fontWeight: FontWeight.bold))),
            const SizedBox(height: 50),
            ConstrainedBox
            (
              constraints: const BoxConstraints(maxWidth: 700),
              child: Text
              (
                'I\'m a 30 years old guy living and working in Kentucky 🇺🇸\n\n' +
                'I am a self-taught person passionate about new technologies and challenges 🚀\n\n',
                maxLines: 8,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.inter
                (
                  color: Colors.white, 
                  fontSize: 22,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
