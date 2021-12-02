import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertical_landing_page/providers/page_provider.dart';

class ScrollGif extends StatelessWidget 
{
  final int page;

  const ScrollGif({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) 
  {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return Align
    (
      alignment: FractionalOffset.bottomCenter,
      child: GestureDetector
      (
        child: MouseRegion
        (
          cursor: SystemMouseCursors.click,
          child: Image.asset('scroll_down.gif', width: 100, height: 100)
        ),
        onTap: ()
        {
          pageProvider.goTo(page);
        },
      ),
    );
  }
}