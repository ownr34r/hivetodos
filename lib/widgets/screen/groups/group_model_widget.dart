import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class GroupFormWidgetModel {
  void saveGroup() {}
}

class GroupFormModelWidgetProvider extends InheritedWidget {
  final GroupFormWidgetModel model;
  const GroupFormModelWidgetProvider(
      {Key? key, required this.child, required this.model})
      : super(key: key, child: child);

  final Widget child;

  static GroupFormModelWidgetProvider? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<GroupFormModelWidgetProvider>();
  }

  @override
  bool updateShouldNotify(GroupFormModelWidgetProvider oldWidget) {
    return true;
  }
}
