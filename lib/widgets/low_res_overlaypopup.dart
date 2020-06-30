 import 'package:flutter/material.dart';

import 'button_widget.dart';

class LowResolutionPopup extends StatelessWidget {
  const LowResolutionPopup({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: Stack(
          children: <Widget>[
            Container(
              width: 252, // MediaQuery.of(context).size.width / 1.2,
              height: 353, //MediaQuery.of(context).size.height / 1.5,
              color: Colors.white,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 42,
                        ),
                        Image.asset(
                          'assets/icons/warning.png',
                          height: 80,
                          width: 80,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 40,
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Warning!',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Low resolution',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'We\'ve detected this image as having low resolution. Thus, printing this picture might make your brick show some bluriness.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff4B4B4B),
                                ),
                              ),
                              Text(
                                '\nDo you want to continue?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Montserrat',
                                  color: Color(0xff4B4B4B),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  ButtonWidget(
                    textColor: Theme.of(context).primaryColor,
                    color: Colors.white,
                    text: 'CANCEL',
                  ),
                  ButtonWidget(
                    textColor: Colors.white,
                    color: Theme.of(context).primaryColor,
                    text: 'SELECIONAR FOTO',
                  ),
                ],
              ),
            ),
            Positioned(
                top: -10,
                right: -10,
                child: IconButton(
                    icon: Icon(
                      Icons.close,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    })),
          ],
        ),
      ),
    );
  }
}
