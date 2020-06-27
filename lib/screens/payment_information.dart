import '../widgets/appbar_listtile.dart';

import '../util/textstyle_constant.dart';
import '../widgets/button_widget.dart';
import '../widgets/drawermenu.dart';
import 'package:flutter/material.dart';

class PaymentInformationScreen extends StatefulWidget {
  @override
  _PaymentInformationScreenState createState() =>
      _PaymentInformationScreenState();
}

class _PaymentInformationScreenState extends State<PaymentInformationScreen> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: AppbarListTile(
          drawerKey: _drawerKey,
          title: 'Payment Information',
          isAR: true,
        ),
      ),
      key: _drawerKey,
      drawer: DrawerMenu(),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Image.asset(
                      'assets/paymentcards.png',
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Nome do titular',
                          style: kTextFieldLabel,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "Nome como escrito no cartão",
                            labelStyle: kTextFieldHintText,
                            contentPadding: EdgeInsets.symmetric(vertical: 5),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Card Number',
                          style: kTextFieldLabel,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            labelText: "xxxx-xxxx-xxxx-xxxx",
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
                                    'Expiration Date',
                                    style: kTextFieldLabel,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 5),
                                      labelText: "mês/ano",
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
                                      'CVV',
                                      style: kTextFieldLabel,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                        labelText: "123",
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
                        SizedBox(height: 50),
                        Text(
                          'Installments',
                          style: kTextFieldLabel,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: <Widget>[
                            Container(
                              width: 80,
                              decoration: BoxDecoration(),
                              child: DropdownButton(
                                items: [
                                  DropdownMenuItem(
                                    child: Text('1x    '),
                                  ),
                                  DropdownMenuItem(
                                    child: Text('2x    '),
                                  ),
                                ],
                                onChanged: (value) {},
                                icon: Container(
                                  width: 28,
                                  height: 26,
                                  color: Color(0xff606060),
                                  child: Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                '1x installment of R\$170,00',
                                style: px12NormalBlack,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Center(
                          child: Image.asset(
                            'assets/icons/marcado.png',
                            height: 26,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ButtonWidget(
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                text: 'ADD PAYMENT INFORMATION')
          ],
        ),
      ),
    );
  }
}
