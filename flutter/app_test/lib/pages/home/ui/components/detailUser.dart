import 'package:app_test/pages/home/ui/components/itemList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_test/pages/home/providers/home.dart';

class DetailUser extends StatelessWidget {
  const DetailUser({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detailUser = context.watch<HomeProvider>().detailUser;

    return Padding(
      padding: EdgeInsets.only(
        top: 5,
        bottom: MediaQuery.of(context).padding.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ItemList(
            title: detailUser?.name,
            subTitle: detailUser?.email,
            iconLeading: Icons.account_circle_rounded,
          ),
          ItemList(
            title: 'City',
            subTitle: detailUser?.address?.city,
            iconLeading: Icons.location_city,
          ),
          ItemList(
            title: 'Company',
            subTitle: detailUser?.company?.name,
            iconLeading: Icons.home_work_sharp,
          ),
          ItemList(
            title: 'Phone',
            subTitle: detailUser?.phone,
            iconLeading: Icons.phone,
          ),
        ],
      ),
    );
  }
}
