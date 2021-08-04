import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:app_test/utils/constants.dart';

const SIZE_INDICATOR = 30.0;

class ActivityIndicator extends StatelessWidget {
  final double size;
  final Color color;

  const ActivityIndicator({
    Key key,
    this.size = SIZE_INDICATOR,
    this.color = Constants.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Platform.isIOS
          ? CupertinoActivityIndicator(
              radius: 18,
            )
          : Container(
              width: size,
              height: size,
              child: CircularProgressIndicator(
                strokeWidth: 4,
                valueColor: AlwaysStoppedAnimation<Color>(
                  color,
                ),
              ),
            ),
    );
  }
}
