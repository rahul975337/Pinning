// import 'package:flutter/material.dart';
// import 'package:hey/alreadyInProject/constants.dart';

// class SettingsBox extends StatelessWidget {
//   const SettingsBox({
//     Key key,
//     @required double height,
//     @required this.title,
//     @required double width,
//   })  : _height = height,
//         _width = width,
//         super(key: key);

//   final double _height;
//   final double _width;
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: myBoxDecoration(),
//       height: _height * 0.07,
//       margin: EdgeInsets.only(left: _width * 0.1, right: _width * 0.1),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             title,
//             style: TextStyle(color: kProfTextColour, fontSize: _width * 0.05),
//           ),
//           Icon(
//             Icons.arrow_forward_ios,
//             color: kProfAccentColour,
//             size: _width * 0.07,
//           )
//         ],
//       ),
//     );
//   }
// }

// BoxDecoration myBoxDecoration() {
//   return BoxDecoration(
//     border: Border(
//       bottom: BorderSide(
//         //                   <--- left side
//         color: kProfSecondaryBackgroundColor,
//         width: 2.0,
//       ),
//     ),
//   );
// }
