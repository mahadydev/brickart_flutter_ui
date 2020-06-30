import '../widgets/appbar_listtile.dart';

import '../util/textstyle_constant.dart';
import '../widgets/button_widget.dart';
import '../widgets/drawermenu.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: AppbarListTile(
          drawerKey: _drawerKey,
          title: 'Edit Profile',
          isAR: false,
        ),
      ),
      key: _drawerKey,
      drawer: DrawerMenu(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(top: 45, bottom: 35),
                    height: 114,
                    width: 114,
                    decoration: BoxDecoration(
                      color: Color(0xffdadada),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Color(0xffB9B7B7),
                    ),
                  ),
                  Text(
                    'Hello, username',
                    textAlign: TextAlign.center,
                    style: homeTitle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'How\'s your day so far?',
                    textAlign: TextAlign.center,
                    style: homeSubTitle,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Full Name',
                          style: kTextFieldLabel,
                        ),
                        Container(
                          height: 24,
                          margin: const EdgeInsets.only(top: 3, bottom: 24),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "**************",
                              labelStyle: kTextFieldHintText,
                            ),
                          ),
                        ),
                        Text(
                          'Email',
                          style: kTextFieldLabel,
                        ),
                        Container(
                          height: 24,
                          margin: const EdgeInsets.only(top: 3, bottom: 24),
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "aaa@aaa.com.br",
                              labelStyle: kTextFieldHintText,
                            ),
                          ),
                        ),
                        Text(
                          'Mobile Phone',
                          style: kTextFieldLabel,
                        ),
                        Container(
                          height: 24,
                          margin: const EdgeInsets.only(top: 3, bottom: 24),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "(011)99123-4567",
                              labelStyle: kTextFieldHintText,
                            ),
                          ),
                        ),
                        Text(
                          'Change Password',
                          style: kTextFieldLabel,
                        ),
                        Container(
                          height: 24,
                          margin: const EdgeInsets.only(top: 3, bottom: 24),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "***********",
                              labelStyle: kTextFieldHintText,
                            ),
                          ),
                        ),
                        Text(
                          'Confirm Password Change',
                          style: kTextFieldLabel,
                        ),
                        Container(
                          height: 24,
                          margin: const EdgeInsets.only(top: 3, bottom: 24),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "***********",
                              labelStyle: kTextFieldHintText,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 66,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29, right: 30, bottom: 27),
            child: ButtonWidget(
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                text: 'Confirm Changes'.toUpperCase()),
          ),
        ],
      ),
    );
  }
}
