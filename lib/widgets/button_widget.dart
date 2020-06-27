import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  const ButtonWidget({
    @required this.textColor,
    @required this.color,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300],
            offset: Offset(1, 2),
          )
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontFamily: 'Montserrat',
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
