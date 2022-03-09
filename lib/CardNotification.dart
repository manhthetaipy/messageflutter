import 'package:flutter/material.dart';

class CardNotification extends StatefulWidget {
  var index;
  var title;
  var body;
  var _press;
  CardNotification(@required this.title, @required this.body,
      @required this.index, @required this._press) {}

  @override
  _CardNotificationState createState() => _CardNotificationState();
}

class _CardNotificationState extends State<CardNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            widget.body,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.teal),
          ),
          IconButton(
              onPressed: () => {
                    print(widget.title),
                    widget._press(widget.index),
                  },
              icon: Icon(Icons.highlight_remove_outlined, color: Colors.yellow))
        ],
      ),
    );
  }
}
