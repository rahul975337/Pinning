import 'package:flutter/material.dart';
import 'package:hey/ExpansionTile.dart';
import 'package:hey/alreadyInProject/constants.dart';
import 'package:hey/alreadyInProject/settingsBox.dart';
import 'package:hey/settingsBlueButton.dart';

class WoExpScreen extends StatefulWidget {
  @override
  _WoExpScreenState createState() => _WoExpScreenState();
}

class _WoExpScreenState extends State<WoExpScreen> {
  double _safePaddingTop, _safePaddingBottom;
  double _height, _width;

  showPicker() {
    showModalBottomSheet(
        builder: (BuildContext context) {
          return Container(
            height: _width / 2,
          );
        },
        context: context);
  }

  @override
  Widget build(BuildContext context) {
    double _safePaddingTop = MediaQuery.of(context).padding.top;
    double _safePaddingBottom = MediaQuery.of(context).padding.bottom;
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height -
        (_safePaddingBottom + _safePaddingTop);
    return Scaffold(
      backgroundColor: kProfSecondaryBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: _height * 0.15,
              width: _width,
              color: kProfSecondaryBackgroundColor,
              child: Row(
                children: [
                  SizedBox(
                    width: _width * 0.07,
                  ),
                  Icon(
                    Icons.arrow_back_ios,
                    color: kProfAccentColour,
                  ),
                  SizedBox(
                    width: _width * 0.04,
                  ),
                  Container(
                    height: _height * 0.07,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(image: NetworkImage(kImageUrl))),
                  ),
                  SizedBox(
                    width: _width * 0.04,
                  ),
                  Container(
                      child: RichText(
                    text: TextSpan(
                      text: 'James Solomon\n',
                      style: TextStyle(
                          color: Colors.green, fontSize: _width * 0.05),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'CIT0EMP001',
                            style: TextStyle(
                                color: kProfAccentColour,
                                fontSize: _width * 0.03)),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Container(
              height: _height * 0.7,
              width: _width,
              decoration: BoxDecoration(
                color: kProfPrimaryBackgroundColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: _height * 0.03,
                      ),
                      Expansiontile(
                        title: 'Citoto',
                      ),
                      SizedBox(
                        height: _height * 0.03,
                      ),
                      Expansiontile(
                        title: 'js',
                      ),
                      SizedBox(
                        height: _height * 0.03,
                      ),
                      Expansiontile(
                        title: 'ONGC Additions Limited',
                      ),
                      SizedBox(
                        height: _height * 0.03,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: _height * 0.15,
              color: kProfPrimaryBackgroundColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: _width * .06,
                      ),
                      SettingsBlueButton(
                        height: _height,
                        width: _width / 7,
                        icon: Icons.arrow_back_ios,
                        isText: false,
                      ),
                      SizedBox(
                        width: _width * .05,
                      ),
                      SettingsBlueButton(
                        height: _height,
                        isText: true,
                        width: _width / 1.8,
                        buttonText: 'Save',
                      ),
                      SizedBox(
                        width: _width * .05,
                      ),
                      GestureDetector(

                        child: SettingsBlueButton(
                          height: _height,
                          width: _width / 7,
                          icon: Icons.add,
                          isText: false,
                        ),
                      ),
                      SizedBox(
                        width: _width * .05,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: _height * 0.02,
                  ),
                  Text(
                    'Data will be saved on successfull verification',
                    style: TextStyle(
                        color: Colors.white70, fontSize: _width * 0.03),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
