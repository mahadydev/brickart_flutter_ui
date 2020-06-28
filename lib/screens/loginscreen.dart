import '../widgets/appbar_listtile.dart';

import '../screens/registrationscreen.dart';
import '../util/textstyle_constant.dart';
import '../widgets/button_widget.dart';
import '../widgets/drawermenu.dart';
import 'package:flutter/material.dart';
import 'mainpageview.dart';

class LoginScreen extends StatelessWidget {
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
                margin: const EdgeInsets.only(top: 20, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Email',
                      style: px14SnormalWbold.copyWith(
                        color: Color(0xff303030),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 3),
                      height: 24,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "aaa@aaa.com.br",
                          labelStyle: kTextFieldHintText,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Password',
                      style: px14SnormalWbold.copyWith(
                        color: Color(0xff303030),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 3),
                      height: 24,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "***********",
                          labelStyle: kTextFieldHintText,
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    Center(
                      child: Text(
                        'I forgot my password',
                        style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                          fontSize: 9,
                          color: Color(0xffA1A4B1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 40,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => RegistrationScreen()),
                          );
                        },
                        child: ButtonWidget(
                          textColor: Theme.of(context).primaryColor,
                          color: Colors.white,
                          text: 'REGISTER',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => PageViewBuild()));
                        },
                        child: ButtonWidget(
                          textColor: Color(0xffFAFAFC),
                          color: Theme.of(context).primaryColor,
                          text: 'LOGIN',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'or use your social account to sign in',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff5B5B5B),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 40,
                          child:
                              Image.asset('assets/icons/instagram-small.png'),
                        ),
                        Text(
                          'instagram',
                          style: px9SnormWnormal,
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/icons/google-small.png'),
                          height: 40,
                        ),
                        Text(
                          'google',
                          style: px9SnormWnormal,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/icons/facebook-small.png'),
                          height: 40,
                        ),
                        Text(
                          'facebook',
                          style: px9SnormWnormal,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
