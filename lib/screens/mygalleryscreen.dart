import '../widgets/appbar_listtile.dart';

import '../screens/shopping_cart.dart';
import '../widgets/all_photos.dart';
import '../widgets/bottom_cart_widget.dart';
import '../widgets/drawermenu.dart';
import '../widgets/socialView.dart';
import '../util/textstyle_constant.dart';
import 'package:flutter/material.dart';

class MyGalleryScreen extends StatefulWidget {
  @override
  _MyGalleryScreenState createState() => _MyGalleryScreenState();
}

class _MyGalleryScreenState extends State<MyGalleryScreen> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  int selectedCategory = 0;
  PageController _pageController;
  final List<String> galleryCategory = [
    'All photos',
    'Favorites',
    'Instagram',
    'Facebook'
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0, keepPage: true);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: AppbarListTile(
          drawerKey: _drawerKey,
          title: 'My Gallery',
          isAR: true,
        ),
      ),
      key: _drawerKey,
      drawer: DrawerMenu(),
      body: SizedBox.expand(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey[400], offset: Offset(2, 1)),
                ],
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: galleryCategory.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = index;
                      });
                      _pageController.animateToPage(selectedCategory,
                          duration: Duration(
                            microseconds: 300,
                          ),
                          curve: Curves.easeIn);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          galleryCategory[index],
                          style: categoryStyle,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          height: 2,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: index == selectedCategory
                                ? Theme.of(context).primaryColor
                                : Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    selectedCategory = page;
                  });
                },
                children: <Widget>[
                  AllPhotosView(),
                  Container(
                    child: Center(
                      child: Text('Favorites'),
                    ),
                  ),
                  SocialView(
                    iconAsset: 'assets/icons/instagram-monocromatic.png',
                    text:
                        'Conect your Instagram account and give life to your best pictures!',
                    buttonIcon: 'assets/icons/instagram-white.png',
                    buttonText: 'Connect to Instagram',
                    buttonColor: Theme.of(context).primaryColor,
                  ),
                  SocialView(
                    iconAsset: 'assets/icons/facebook-monocromatic.png',
                    text:
                        'Conect your Facebook account and give life to your best pictures!',
                    buttonIcon: 'assets/icons/facebook-white.png',
                    buttonText: 'Connect to Facebook',
                    buttonColor: Color(0xff3A5A98),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ShoppingCartScreen())),
              child: BottomCartWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
