import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DialButton extends StatelessWidget {
  const DialButton({
    required Key key,
    required this.iconSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String iconSrc, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.0,
      child: FlatButton(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
        ),
        onPressed: press,
        child: Column(
          children: [
            SvgPicture.asset(
              iconSrc,
              color: Colors.white,
              height: 36,
            ),
            SizedBox(height: 5),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            )
          ],
        ),
      ),
    );
  }
}
