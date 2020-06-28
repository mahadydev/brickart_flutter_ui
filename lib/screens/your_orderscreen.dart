import '../widgets/appbar_listtile.dart';

import '../util/textstyle_constant.dart';
import '../widgets/drawermenu.dart';
import 'package:flutter/material.dart';
import 'package:getflutter/components/accordian/gf_accordian.dart';

class YourOrderScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: AppbarListTile(
          drawerKey: _drawerKey,
          title: 'Your Order',
          isAR: false,
        ),
      ),
      key: _drawerKey,
      drawer: DrawerMenu(),
      body: ListView.builder(
        itemBuilder: (context, index) => OrderCards(),
        itemCount: 8,
      ),
    );
  }
}

class OrderCards extends StatelessWidget {
  const OrderCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: GFAccordion(
        titleContainerHeight: 120,
        titlePadding: EdgeInsets.symmetric(horizontal: 10),
        titleChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('ID Order Number', style: bottomAppBarTextStyle),
                Text('Order Status', style: bottomAppBarTextStyle),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('1115', style: px12BoldBlack),
                Text('Completed', style: px12BoldBlack),
              ],
            ),
            Text('May 7th, 2019',
                style: TextStyle(
                  color: Color(0xff303030),
                  fontSize: 9,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Full Amount', style: px12BoldBlack),
                Text('R\$ 150,00', style: homeSubTitle),
              ],
            ),
          ],
        ),
        expandedTitlebackgroundColor: Colors.white,
        collapsedTitlebackgroundColor: Colors.white,
        contentChild: Container(
          height: 310,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 115,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(right: 14),
                    child: Image.asset(
                        'assets/collectionImage/img${index + 1}.png'),
                  ),
                  itemCount: 5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Order date ', style: px12BoldBlack),
                  Text('May 7th, 2019', style: px12NormalBlack),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('ID Payment Number ', style: px12BoldBlack),
                  Text('123456789', style: px12NormalBlack),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Payment Method ', style: px12BoldBlack),
                  Text('bolbradesco', style: px12NormalBlack),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Contact ', style: px12BoldBlack),
                  Text('matheusfink@gmail.com', style: px12NormalBlack),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Full Amount ', style: px12BoldBlack),
                  Text('R\$ 150,00', style: px12NormalBlack),
                ],
              ),
            ],
          ),
        ),
        collapsedIcon: Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
          child: Center(
            child: Icon(
              Icons.expand_more,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
        expandedIcon: Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Theme.of(context).primaryColor,
          ),
          child: Center(
            child: Icon(
              Icons.expand_less,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
      ),
    );
  }
}
