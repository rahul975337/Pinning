import 'package:flutter/material.dart';
import 'package:hey/alreadyInProject/constants.dart';

class Expansiontile extends StatelessWidget {
  final String title;

  const Expansiontile({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isOpen = false;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Colors.white54,
              width: 0.6,
            ),
          )),
          child: ExpansionTile(
            onExpansionChanged: (value) {
              isOpen = !isOpen;
            },
            trailing: Transform.rotate(
              angle: isOpen ? 90 : 0,
              child: Icon(
                Icons.arrow_forward_ios,
                color: kProfAccentColour,
              ),
            ),
            title: Text(
              title,
              style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: kProfAccentColour),
            ),
            children: <Widget>[
              ListTile(
                title: Text(
                  kAppreciationText,
                  style: TextStyle(
                      fontSize: 13.0,
                      fontStyle: FontStyle.italic,
                      color: kProfTextColour),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
