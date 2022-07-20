import 'package:flutter/material.dart';

import '../screen/groups/group_model_widget.dart';

class GrouFormWidget extends StatefulWidget {
  const GrouFormWidget({Key? key}) : super(key: key);

  @override
  State<GrouFormWidget> createState() => _GrouFormWidgetState();
}

class _GrouFormWidgetState extends State<GrouFormWidget> {
  final _model = GroupFormWidgetModel();
  @override
  Widget build(BuildContext context) {
    return GroupFormModelWidgetProvider(
      model: _model,
      child: const _GroupFormWidgetBody(),
    );
  }
}

class _GroupFormWidgetBody extends StatelessWidget {
  const _GroupFormWidgetBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('new group'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: _GroupNameWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => GroupFormModelWidgetProvider.read(context),
        //разобраться с инхеритом!!!
        child: const Icon(Icons.done),
      ),
    );
  }
}

class _GroupNameWidget extends StatelessWidget {
  const _GroupNameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      autofocus: true,
      decoration:
          InputDecoration(border: OutlineInputBorder(), hintText: 'group name'),
    );
  }
}
