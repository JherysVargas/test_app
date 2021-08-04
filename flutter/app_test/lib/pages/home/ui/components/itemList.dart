import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
    @required this.title,
    @required this.subTitle,
    @required this.iconLeading,
    this.iconTrailing,
    this.sizeIconLeading = 32,
    this.sizeIconTrailing = 26,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final IconData iconLeading;
  final IconData iconTrailing;
  final double sizeIconLeading;
  final double sizeIconTrailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      trailing: iconTrailing != null
          ? Icon(
              iconTrailing,
              size: sizeIconTrailing,
            )
          : null,
      leading: Icon(
        iconLeading,
        size: sizeIconLeading,
      ),
      title: Text(title),
      subtitle: Text(subTitle),
    );
  }
}
