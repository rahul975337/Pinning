import 'package:flutter/material.dart';
import 'package:hey/alreadyInProject/constants.dart';
import 'package:hey/otp/otpField.dart';
import 'package:hey/settingsBlueButton.dart';

class OtpScreen extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kProfSecondaryBackgroundColor,
                  ),
                  height: _height / 4,
                  width: _width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.chevron_left,
                              color: kProfAccentColour,
                            ),
                            onPressed: () {},
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Container(
                            child: Text(
                              "citoto",
                              style: TextStyle(
                                color: Color(0xFF00ADBD),
                                // kProfAccentColour,
                                fontSize: _width * 0.07,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 65,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'Security Pin',
                            style: TextStyle(
                                color: kProfTextColour,
                                fontSize: _height * 0.04,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(),
                  height: _height * 0.75,
                  width: _width,
                  decoration: BoxDecoration(
                    color: kProfPrimaryBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        blurRadius: 3,
                        spreadRadius: 0.1,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              left: _width * 0.1, right: _width * 0.1),
                          child: OtpField(
                            fontSize: _width * 0.08,
                            fieldWidth: _width * 0.11,
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          'This seucirty code will be used to authenticate your\naccount at the Kiosk device',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10.0, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: _height / 2.2,
                      ),
                      SettingsBlueButton(
                        height: _height,
                        width: _width,
                        buttonText: 'Save',
                        isText: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
