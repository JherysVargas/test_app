import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_test/utils/constants.dart';
import 'package:app_test/pages/home/ui/home.dart';
import 'package:app_test/pages/home/providers/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Constants.primary,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
