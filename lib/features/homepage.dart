import 'package:flutter/material.dart';
import 'package:tutorials/utils/enums.dart';
import 'package:tutorials/utils/extensions.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static final List<Widget> _viewScreens = Languages.values
      .map((language) => Center(
            child: Text(language.value),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: Languages.values.length,
      child: Scaffold(
        drawer: Drawer(
          child: TabBarView(
            children: _viewScreens,
          ),
        ),
        appBar: AppBar(
          title: const Text('Codex'),
          bottom: TabBar(
            tabs: Languages.values
                .map((language) => Tab(
                      icon: Icon(language.icon.icon),
                    ))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: _viewScreens,
        ),
      ),
    );
  }
}
