import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_test/pages/home/models/user.dart';
import 'package:app_test/hooks/useShowPanelBottom.dart';
import 'package:app_test/pages/home/providers/home.dart';
import 'package:app_test/pages/home/ui/components/activityIndicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<HomeProvider>().getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeProvider>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Test AntPack'),
      ),
      body: homeProvider.loading
          ? ActivityIndicator()
          : ListView.builder(
              itemCount: homeProvider.users.length,
              itemBuilder: (BuildContext context, int index) {
                UserModel user = homeProvider.users[index];
                return ListTile(
                  dense: true,
                  trailing: Icon(
                    Icons.keyboard_arrow_down,
                    size: 26,
                  ),
                  leading: Icon(
                    Icons.account_circle_rounded,
                    size: 34,
                  ),
                  title: Text(user.name),
                  subtitle: Text(user.email),
                  onTap: () => detailUser(user),
                );
              },
            ),
    );
  }

  void detailUser(UserModel user) {
    context.read<HomeProvider>().detailUser = user;
    useShowPanelBottom(context: context);
  }
}
