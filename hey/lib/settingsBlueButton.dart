import 'package:flutter/material.dart';

class SettingsBlueButton extends StatelessWidget {
  const SettingsBlueButton({
    Key key,
    @required double height,
    @required double width,
    this.buttonText,
    this.isText,
    this.icon,
    //  this.onTap,
  })  : _height = height,
        _width = width,
        super(key: key);

  final double _height;
  final double _width;
  final String buttonText;
  final bool isText;
  final IconData icon;
  // final onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height * 0.06,
      width: _width * 0.9,
      // margin: EdgeInsets.only(bottom: _height * 0.01),
      child: GestureDetector(
        // onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent.shade400,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Center(
              child: isText
                  ? Text(
                      buttonText,
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )
                  : Icon(
                      icon,
                      color: Colors.white,
                    )),
        ),
      ),
    );
  }
}
