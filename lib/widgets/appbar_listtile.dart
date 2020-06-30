import '../screens/faq.dart';
import '../util/textstyle_constant.dart';
import 'package:flutter/material.dart';

class AppbarListTile extends StatelessWidget {
  const AppbarListTile({
    Key key,
    @required this.title,
    @required GlobalKey<ScaffoldState> drawerKey,
    @required this.isAR,
  })  : _drawerKey = drawerKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _drawerKey;
  final String title;
  final bool isAR;
  @override
  Widget build(BuildContext context) {
    return ListTile(
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
          title,
          style: kAppBarTitleTextStyle,
        ),
      ),
      trailing: GestureDetector(
        onTap: () {
          if (!isAR)
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => FAQScreen()));
        },
        child: isAR
            ? CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Image.asset(
                  'assets/icons/AR-white.png',
                  height: 40,
                  width: 40,
                ),
              )
            : Container(
                child: Image.asset('assets/icons/chat.png'),
                height: 40,
                width: 40,
              ),
      ),
    );
  }
}
