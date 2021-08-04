import 'package:flutter/material.dart';
import 'package:app_test/pages/home/ui/components/detailUser.dart';

useShowPanelBottom({
  @required context,
}) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    isScrollControlled: false,
    backgroundColor: Colors.white,
    context: context,
    builder: (BuildContext context) => DetailUser(),
  );
}
