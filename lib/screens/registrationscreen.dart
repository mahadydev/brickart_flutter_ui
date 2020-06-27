import 'package:brickart_flutter/widgets/appbar_listtile.dart';

import '../util/textstyle_constant.dart';
import '../widgets/button_widget.dart';
import '../widgets/drawermenu.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
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
          title: 'Brickart',
          isAR: false,
        ),
      ),
      key: _drawerKey,
      drawer: DrawerMenu(),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: ListView(
            children: <Widget>[
              Center(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 22, top: 32),
                  height: 73,
                  width: 250,
                  child: Image.asset(
                    'assets/logo-brickart.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Text(
                    'Uma nova forma de mostrar e celebrar suas lembranças e histórias',
                    textAlign: TextAlign.center,
                    style: kloginRegisterPageSubtitle,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Full Name',
                      style: kTextFieldLabel,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "************",
                        labelStyle: kTextFieldHintText,
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
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Password',
                      style: kTextFieldLabel,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "***********",
                        labelStyle: kTextFieldHintText,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(false);
                  },
                  child: ButtonWidget(
                    textColor: Colors.white,
                    color: Theme.of(context).primaryColor,
                    text: 'REGISTER',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
