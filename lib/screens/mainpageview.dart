import '../screens/collectionscreen.dart';
import '../screens/home.dart';
import '../screens/mygalleryscreen.dart';
import '../widgets/drawermenu.dart';
import 'package:flutter/material.dart';
import '../util/textstyle_constant.dart';

class PageViewBuild extends StatefulWidget {
  @override
  _PageViewBuildState createState() => _PageViewBuildState();
}

class _PageViewBuildState extends State<PageViewBuild> {
  PageController _pageController;
  int bottomSelectedIndex = 0;
  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.linearToEaseOut);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    print('disposed');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          currentIndex: bottomSelectedIndex,
          backgroundColor: Colors.white,
          onTap: (index) {
            bottomTapped(index);
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Container(
                height: 30,
                child: Image.asset('assets/icons/home.png'),
              ),
              title: Text(
                'Home',
                style: bottomAppBarTextStyle,
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 30,
                child: Image.asset('assets/icons/gallery.png'),
              ),
              title: Text(
                'My Galary',
                style: bottomAppBarTextStyle,
              ),
            ),
            BottomNavigationBarItem(
              icon: Container(
                height: 30,
                child: Image.asset('assets/icons/collections.png'),
              ),
              title: Text(
                'Collections',
                style: bottomAppBarTextStyle,
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (pageIndex) {
          pageChanged(pageIndex);
        },
        children: <Widget>[
          HomeScreen(),
          MyGalleryScreen(),
          CollectionScreen(),
        ],
      ),
    );
  }
}
