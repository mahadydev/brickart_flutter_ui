import '../screens/collectionscreen.dart';
import '../screens/edit_profile.dart';
import '../screens/faq.dart';
import '../screens/home.dart';
import '../screens/mygalleryscreen.dart';
import '../screens/shopping_cart.dart';
import '../screens/your_orderscreen.dart';
import '../util/textstyle_constant.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 32, top: 64, bottom: 32, right: 32),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          colors: [
            Color(0xFFDB00BF),
            Color(0xFFFF005E),
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Image.asset(
                      'assets/logo-brickart.png',
                      color: Colors.white,
                    ),
                    height: 42,
                    width: 128,
                  ),
                ),
                SizedBox(
                  height: 42,
                ),
                Text(
                  'Welcome, First-name',
                  style: drawerMenuTextStyle,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => EditProfile())),
                  child: Text(
                    'Edit profile',
                    style: kTextFieldHintText,
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FAQScreen())),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Customer Service',
                        style: drawerMenuTextStyle,
                      ),
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(1, 1),
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FAQScreen())),
                  child: Text(
                    'Frequently Asked Questions',
                    style: drawerMenuTextStyle,
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => YourOrderScreen())),
                  child: Text(
                    'Your Orders',
                    style: drawerMenuTextStyle,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Terms & conditions ',
                  style: drawerMenuTextStyle,
                ),
                SizedBox(height: 16),
                Divider(
                  color: Colors.white,
                  thickness: 3,
                  endIndent: 100,
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen())),
                  child: Text(
                    'Home',
                    style: drawerMenuTextStyle,
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyGalleryScreen())),
                  child: Text(
                    'My Gallery',
                    style: drawerMenuTextStyle,
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CollectionScreen())),
                  child: Text(
                    'Collections',
                    style: drawerMenuTextStyle,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Augmented Reality',
                  style: drawerMenuTextStyle,
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ShoppingCartScreen())),
                  child: Text(
                    'Shopping Cart ',
                    style: drawerMenuTextStyle,
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
          Text(
            '@2019 Torus Comércio\nCNPJ 28.737.205/0001-73',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w600,
              fontFamily: 'Montserrat',
            ),
          ),
        ],
      ),
    );
  }
}
