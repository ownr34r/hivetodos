import 'package:flutter/material.dart';
import 'groupForm/group_form_widget.dart';
import 'screen/groups/groups_widget.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'demo',
      routes: {
        '/groups': (context) => const GroupsWidget(),
        '/grous/form': (context) => const GrouFormWidget(),
      },
      initialRoute: '/groups',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
