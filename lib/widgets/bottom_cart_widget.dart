import '../util/textstyle_constant.dart';
import 'package:flutter/material.dart';

class BottomCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Each Additional Brick R\$35,00',
                    style: bottomAppBarTextStyle.copyWith(
                      color: Color(0xFFA1A4B1),
                    ),
                  ),
                  Text(
                    'Sub-total: R\$170,00',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 48,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Go to Cart',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
