import 'package:flutter/material.dart';
import 'ratingbar.dart';

class RatingPage extends StatefulWidget {
  final String title;
  RatingPage({Key key, this.title}) : super(key: key);

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  String ratingValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(),
                ),
                RatingBar(
                  value: 5,
                  size: 30,
                  padding: 5,
                  normalImage: 'img/star_normal.png',
                  selectImage: 'img/star.png',
                  selectAble: true,
                  onRatingUpdate: (value) {
                    ratingValue = value;
                    setState(() {});
                  },
                  maxRating: 10,
                  count: 5,
                ),
                Expanded(
                  child: Container(),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(value())
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  String value() {
    if (ratingValue == null) {
      return '评分：5 分';
    } else {
      return '评分：$ratingValue  分';
    }
  }
}
