import '../widgets/appbar_listtile.dart';

import '../screens/payment_information.dart';
import '../screens/shipping_address.dart';
import '../util/textstyle_constant.dart';
import '../widgets/button_widget.dart';
import '../widgets/drawermenu.dart';
import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatelessWidget {
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
          title: 'Shopping Cart',
          isAR: true,
        ),
      ),
      key: _drawerKey,
      drawer: DrawerMenu(),
      body: SizedBox.expand(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 40,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/gallery.png',
                          fit: BoxFit.fitWidth,
                          height: 24,
                          width: 24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'My Gallery',
                          style: px12BoldBlack,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(right: 20),
                        child: Image.asset(
                          'assets/collectionImage/img${index + 1}.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      itemCount: 6,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 40,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'assets/icons/collections.png',
                          fit: BoxFit.fitWidth,
                          height: 24,
                          width: 24,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Collections',
                          style: px12BoldBlack,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Color(0xffA1A4B1),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Click to add a brick from your collection',
                          style: bottomAppBarTextStyle,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ShippingAddress())),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 56,
                      color: Colors.white,
                      child: ListTile(
                        leading: Image.asset(
                          'assets/icons/home.png',
                          fit: BoxFit.fitWidth,
                          height: 35,
                          width: 35,
                        ),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Shipping Address', style: px12BoldBlack),
                            Text(
                              'Avenida lins de vasconcelos, 1455 - ap 44 bl 1 ',
                              maxLines: 1,
                              style: bottomAppBarTextStyle,
                            ),
                          ],
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PaymentInformationScreen())),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 56,
                      color: Colors.white,
                      child: ListTile(
                        leading: Image.asset(
                          'assets/icons/card.png',
                          fit: BoxFit.fitWidth,
                          height: 40,
                          width: 40,
                        ),
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Payment Information', style: px12BoldBlack),
                            Text(
                              'VISA  ****-****-****-3995',
                              maxLines: 1,
                              style: bottomAppBarTextStyle,
                            ),
                          ],
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    height: 208,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Your Order',
                          style: homeTitle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('3 bricks for R\$ 135,00',
                                maxLines: 1, style: px12NormalBlack),
                            Text('R\$ 120,00', style: px12BoldBlack),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Text('1 addition brick for R\$35,00 each',
                                  style: px12NormalBlack),
                            ),
                            Text('R\$ 30,00', style: px12BoldBlack),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Shipping Cost', style: px12NormalBlack),
                            Text('free', style: px12BoldBlack),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Promo Code', style: px12NormalBlack),
                            Text('R\$ 0,00', style: px12BoldBlack),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Delivery Estimate', style: px12NormalBlack),
                            Text('DD/MM/YY', style: px12Normalfade),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Total', style: px12NormalBlack),
                            Text('R\$ 150,00', style: px12BoldBlack),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 48,
              child: ButtonWidget(
                  textColor: Colors.white,
                  color: Theme.of(context).primaryColor,
                  text: 'COMPLETE ORDER'),
            ),
          ],
        ),
      ),
    );
  }
}
