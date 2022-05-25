import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String _text;
  final VoidCallback _handler;

  AdaptiveFlatButton(this._text, this._handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              _text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: _handler)
        : FlatButton(
            color: Theme.of(context).primaryColor,
            textColor: Theme.of(context).textTheme.button!.color,
            child: Text(
              _text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: _handler,
          );
  }
}
