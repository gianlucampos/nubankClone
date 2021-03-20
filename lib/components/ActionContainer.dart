import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/Colors.dart';

class ActionContainer extends StatelessWidget {
  final String title;
  final IconData icon;

  const ActionContainer({Key key, this.title, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: PURPLE,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              softWrap: true,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
