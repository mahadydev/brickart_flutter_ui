import '../widgets/appbar_listtile.dart';

import '../util/textstyle_constant.dart';
import '../widgets/button_widget.dart';
import '../widgets/drawermenu.dart';
import 'package:flutter/material.dart';

class ShippingAddress extends StatefulWidget {
  @override
  _ShippingAddressState createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: AppbarListTile(
          drawerKey: _drawerKey,
          title: 'Shipping Address',
          isAR: true,
        ),
      ),
      key: _drawerKey,
      drawer: DrawerMenu(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Full Name',
                    style: kTextFieldLabel,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "your name",
                      labelStyle: kTextFieldHintText,
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email',
                    style: kTextFieldLabel,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "aaa@aaa.com.br",
                      labelStyle: kTextFieldHintText,
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Whatsapp Number',
                    style: kTextFieldLabel,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "(xx) xxxxx-xxxx",
                      labelStyle: kTextFieldHintText,
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Zip Code',
                              style: kTextFieldLabel,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: "xxxxxx-xxx",
                                labelStyle: kTextFieldHintText,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Address',
                                style: kTextFieldLabel,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: "Rua um dois três",
                                  labelStyle: kTextFieldHintText,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Address Number',
                              style: kTextFieldLabel,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5),
                                labelText: "34",
                                labelStyle: kTextFieldHintText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Extention',
                                style: kTextFieldLabel,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 5),
                                  labelText: " ",
                                  labelStyle: kTextFieldHintText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Neighborhood',
                    style: kTextFieldLabel,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Jardim um dois três",
                      labelStyle: kTextFieldHintText,
                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'City',
                              style: kTextFieldLabel,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 5),
                                labelText: "São Paulo",
                                labelStyle: kTextFieldHintText,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'State',
                                style: kTextFieldLabel,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  labelText: "São Paulo",
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 5),
                                  labelStyle: kTextFieldHintText,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          ButtonWidget(
            textColor: Colors.white,
            color: Theme.of(context).primaryColor,
            text: 'ADD SHIPPING ADDRESS',
          )
        ],
      ),
    );
  }
}
