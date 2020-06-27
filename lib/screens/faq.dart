import '../widgets/appbar_listtile.dart';

import '../widgets/button_widget.dart';
import '../widgets/drawermenu.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/components/accordian/gf_accordian.dart';

class FAQScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: AppbarListTile(
          drawerKey: _drawerKey,
          title: 'FAQ',
          isAR: false,
        ),
      ),
      key: _drawerKey,
      drawer: DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
        child: ListView(
          children: <Widget>[
            Container(
              height: 108,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(75, 0, 0, 0),
                    offset: Offset(1, 1),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Need Help?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ButtonWidget(
                      textColor: Colors.white,
                      color: Theme.of(context).primaryColor,
                      text: 'ONLINE CHAT',
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(75, 0, 0, 0),
                    offset: Offset(1, 1),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    'Frequently Asked Questions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontStyle: FontStyle.normal,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    child: Text(
                      'Veja algumas das principais perguntas abaixo',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff5B5B5B),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  GFAccordion(
                    title: 'O que são os bricks?',
                    content:
                        'Todos os bricks são produzidos com um material plástico super leve e resistente.',
                    collapsedTitlebackgroundColor: Color(0xffFAFAFC),
                    expandedTitlebackgroundColor: Color(0xffFAFAFC),
                    collapsedIcon: Icon(
                      Icons.expand_more,
                      color: Theme.of(context).primaryColor,
                    ),
                    expandedIcon: Icon(
                      Icons.expand_less,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GFAccordion(
                    title: 'Existem tamanhos diferentes?',
                    content:
                        'Todos os bricks são produzidos com um material plástico super leve e resistente.',
                    collapsedTitlebackgroundColor: Color(0xffFAFAFC),
                    expandedTitlebackgroundColor: Color(0xffFAFAFC),
                    collapsedIcon: Icon(
                      Icons.expand_more,
                      color: Theme.of(context).primaryColor,
                    ),
                    expandedIcon: Icon(
                      Icons.expand_less,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GFAccordion(
                    title: 'Que adesivo é esse?',
                    content:
                        'Todos os bricks são produzidos com um material plástico super leve e resistente.',
                    collapsedTitlebackgroundColor: Color(0xffFAFAFC),
                    expandedTitlebackgroundColor: Color(0xffFAFAFC),
                    collapsedIcon: Icon(
                      Icons.expand_more,
                      color: Theme.of(context).primaryColor,
                    ),
                    expandedIcon: Icon(
                      Icons.expand_less,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GFAccordion(
                    title: 'O que são os bricks?',
                    content:
                        'Todos os bricks são produzidos com um material plástico super leve e resistente.',
                    collapsedTitlebackgroundColor: Color(0xffFAFAFC),
                    expandedTitlebackgroundColor: Color(0xffFAFAFC),
                    collapsedIcon: Icon(
                      Icons.expand_more,
                      color: Theme.of(context).primaryColor,
                    ),
                    expandedIcon: Icon(
                      Icons.expand_less,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GFAccordion(
                    title: 'Existem tamanhos diferentes?',
                    content:
                        'Todos os bricks são produzidos com um material plástico super leve e resistente.',
                    collapsedTitlebackgroundColor: Color(0xffFAFAFC),
                    expandedTitlebackgroundColor: Color(0xffFAFAFC),
                    collapsedIcon: Icon(
                      Icons.expand_more,
                      color: Theme.of(context).primaryColor,
                    ),
                    expandedIcon: Icon(
                      Icons.expand_less,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GFAccordion(
                    title: 'Que adesivo é esse?',
                    content:
                        'Todos os bricks são produzidos com um material plástico super leve e resistente.',
                    collapsedTitlebackgroundColor: Color(0xffFAFAFC),
                    expandedTitlebackgroundColor: Color(0xffFAFAFC),
                    collapsedIcon: Icon(
                      Icons.expand_more,
                      color: Theme.of(context).primaryColor,
                    ),
                    expandedIcon: Icon(
                      Icons.expand_less,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GFAccordion(
                    title: 'O que são os bricks?',
                    content:
                        'Todos os bricks são produzidos com um material plástico super leve e resistente.',
                    collapsedTitlebackgroundColor: Color(0xffFAFAFC),
                    expandedTitlebackgroundColor: Color(0xffFAFAFC),
                    collapsedIcon: Icon(
                      Icons.expand_more,
                      color: Theme.of(context).primaryColor,
                    ),
                    expandedIcon: Icon(
                      Icons.expand_less,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GFAccordion(
                    title: 'Existem tamanhos diferentes?',
                    content:
                        'Todos os bricks são produzidos com um material plástico super leve e resistente.',
                    collapsedTitlebackgroundColor: Color(0xffFAFAFC),
                    expandedTitlebackgroundColor: Color(0xffFAFAFC),
                    collapsedIcon: Icon(
                      Icons.expand_more,
                      color: Theme.of(context).primaryColor,
                    ),
                    expandedIcon: Icon(
                      Icons.expand_less,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  GFAccordion(
                    title: 'Que adesivo é esse?',
                    content:
                        'Todos os bricks são produzidos com um material plástico super leve e resistente.',
                    collapsedTitlebackgroundColor: Color(0xffFAFAFC),
                    expandedTitlebackgroundColor: Color(0xffFAFAFC),
                    collapsedIcon: Icon(
                      Icons.expand_more,
                      color: Theme.of(context).primaryColor,
                    ),
                    expandedIcon: Icon(
                      Icons.expand_less,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
