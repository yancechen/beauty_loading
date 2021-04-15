import 'package:flutter/material.dart';

///Created by chenyouyu on 4/14/21 6:22 PM
class LoadingDefaultStyle extends StatelessWidget {

  final String hint;

  LoadingDefaultStyle({Key key, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: new Center(
        child: new SizedBox(
          width: 120.0,
          height: 120.0,
          child: new Container(
            decoration: ShapeDecoration(
              color: Color(0xffffffff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(
                    valueColor: new AlwaysStoppedAnimation(Color(0xffAA1F52))),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                  ),
                  child: new Text(hint ?? "loading"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
