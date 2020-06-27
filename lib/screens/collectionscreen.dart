import '../widgets/appbar_listtile.dart';

import '../screens/shopping_cart.dart';
import '../widgets/arena.dart';
import '../widgets/bottom_cart_widget.dart';
import '../widgets/drawermenu.dart';
import '../widgets/most_ordered.dart';
import '../util/textstyle_constant.dart';
import 'package:flutter/material.dart';

class CollectionScreen extends StatefulWidget {
  @override
  _CollectionScreenState createState() => _CollectionScreenState();
}

class _CollectionScreenState extends State<CollectionScreen> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  int selectedCategory = 0;
  PageController _pageController;
  final List<String> galleryCategory = [
    'Most Ordered',
    'Torcida',
    'Arena',
    'Frases do Timão'
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
          title: 'Collections',
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
                    ///switch between page also change the bottom bar of category
                    selectedCategory = page;
                  });
                },
                children: <Widget>[
                  MostOrdered(),
                  ArenaView(),
                  MostOrdered(),
                  ArenaView(),
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
