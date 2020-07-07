import 'package:flutter/material.dart';

class Quotecard extends StatelessWidget {
  const Quotecard({
    Key key,
    this.e,
    this.delete,
  }) : super(key: key);

  final e;
  final delete;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
      child: Container(
        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          children: <Widget>[
            Text(
              e.text,
              style: TextStyle(
                  fontFamily: "Dancing",
                  letterSpacing: 2,
                  fontSize: 18,
                  color: Colors.grey[600]),
            ),
            Container(
              padding: EdgeInsetsDirectional.only(end: 20),
              alignment: Alignment.bottomRight,
              child: Text(
                '-${e.author}',
                style: TextStyle(
                    fontFamily: "Dancing",
                    letterSpacing: 2,
                    fontSize: 12,
                    color: Colors.grey[800]),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: FlatButton.icon(
                onPressed: delete,
                label: Text(
                  "",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                icon: Icon(
                  Icons.delete,
                  size: 15,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Divider(color: Colors.grey[400])
          ],
        ),
      ),
    );
  }
}
