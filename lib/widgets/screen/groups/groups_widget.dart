import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class GroupsWidget extends StatelessWidget {
  const GroupsWidget({Key? key}) : super(key: key);

  void showForm(BuildContext context) {
    Navigator.of(context).pushNamed('/grous/form');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Groups'),
      ),
      body: _GroupListWidget(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add), onPressed: () => showForm(context)),
    );
  }
}

class _GroupListWidget extends StatefulWidget {
  const _GroupListWidget({Key? key}) : super(key: key);

  @override
  State<_GroupListWidget> createState() => _GroupListWidgetState();
}

class _GroupListWidgetState extends State<_GroupListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 100,
      separatorBuilder: (BuildContext context, int index) {
        return _GroupListRowWidget(
          indexInList: index,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 1,
          color: Colors.blue,
        );
      },
    );
  }
}

class _GroupListRowWidget extends StatelessWidget {
  final int indexInList;
  const _GroupListRowWidget({Key? key, required this.indexInList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      endActionPane: ActionPane(
        motion: BehindMotion(),
        children: [
          SlidableAction(
            backgroundColor: Color.fromARGB(255, 207, 3, 3),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
            onPressed: (BuildContext context) {},
          ),
        ],
      ),
      child: ListTile(
        onTap: () {},
        title: Text('to do shka'),
        trailing: Icon(Icons.chevron_left),
      ),
    );
  }
}
// Slidable(
   
//       child: const ListTile(
//         title: Text('eweewewewewewe'),
//         trailing: Icon(Icons.chevron_right),
//       ),
//     );
//   }
// }
