import 'package:flutter/material.dart';
import 'package:tutorials/utils/enums.dart';
import 'package:tutorials/utils/extensions.dart';

class ViewDrawers extends StatelessWidget {
  const ViewDrawers({
    required this.index,
    super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final language = Languages.values[index];

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.deepPurple),
            child: Text(
              language.value,
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          ListTile(
            leading: Icon(language.icon.icon),
            title: const Text('Welcome'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
