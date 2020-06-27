import '../util/textstyle_constant.dart';
import '../widgets/drawermenu.dart';
import 'package:flutter/material.dart';

import 'faq.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: ListTile(
          leading: GestureDetector(
            onTap: () {
              _drawerKey.currentState.openDrawer();
            },
            child: Container(
              child: Image.asset('assets/icons/hamburger.png'),
              height: 40,
              width: 40,
            ),
          ),
          title: Center(
            child: Text(
              'Brickart',
              style: kAppBarTitleTextStyle,
            ),
          ),
          trailing: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => FAQScreen()));
            },
            child: Container(
              child: Image.asset('assets/icons/chat.png'),
              height: 40,
              width: 40,
            ),
          ),
        ),
      ),
      key: _drawerKey,
      drawer: DrawerMenu(),
      body: SizedBox.expand(
        child: ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'Bem-vindo a Brickart',
                    textAlign: TextAlign.center,
                    style: homeTitle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Conte sua história para todos seus amigos e familiares',
                    textAlign: TextAlign.center,
                    style: homeSubTitle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 220,
                    child: Image.asset(
                      'assets/images/video-playback-wistia.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 560,
              child: Image.asset(
                'assets/images/brick-collection-2.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'Eternize seus momentos!',
                    textAlign: TextAlign.center,
                    style: homeTitle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Os Bricks são quadros de 20cm x 20cm, perfeitos para colecionar suas memórias',
                    textAlign: TextAlign.center,
                    style: homeSubTitle,
                  ),
                ],
              ),
            ),
            Container(
              height: 518,
              child: Image.asset(
                'assets/images/brick-collection-3.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'Crie diferentes disposições',
                    textAlign: TextAlign.center,
                    style: homeTitle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Os bricks são reposicionáveis, permitindo você criar diferentes ambientes com suas memóriás e lembranças',
                    textAlign: TextAlign.center,
                    style: homeSubTitle,
                  ),
                ],
              ),
            ),
            Container(
              height: 570,
              child: Image.asset(
                'assets/images/glueless.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'Gruda e desgruda! ',
                    textAlign: TextAlign.center,
                    style: homeTitle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Os bricks possuem adesivo de nano sucção que permite ser reposicionado sem danificar as paredes.',
                    textAlign: TextAlign.center,
                    style: homeSubTitle,
                  ),
                ],
              ),
            ),
            Container(
              height: 576,
              child: Image.asset(
                'assets/images/brick-collection-1.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    '3 Bricks por R\$ 135,00! ',
                    textAlign: TextAlign.center,
                    style: homeTitle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Cada brick adicional sai por R\$ 35,00',
                    textAlign: TextAlign.center,
                    style: homeSubTitle,
                  ),
                ],
              ),
            ),
            Container(
              height: 576,
              child: Image.asset(
                'assets/images/brick-collection.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: Column(
                children: <Widget>[
                  Text(
                    'Frete grátis! ',
                    textAlign: TextAlign.center,
                    style: homeTitle,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'É só escolher as imagens que o frete é por nossa conta.',
                    textAlign: TextAlign.center,
                    style: homeSubTitle,
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
