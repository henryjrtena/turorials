import 'package:flutter/material.dart';
import 'package:tutorials/features/view_drawers.dart';
import 'package:tutorials/utils/enums.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key});

  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  static final List<Widget> _viewScreens = Languages.values
      .map((language) => Center(
            child: Text(language.value),
          ))
      .toList();

  int? selectedScreen;

  void _onViewScreen(int index) {
    setState(() {
      selectedScreen = selectedScreen != index ? index : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Codex')),
      drawer: Drawer(
        child: selectedScreen == null
            ? const Center(child: Text('Please choose a language...'))
            : ViewDrawers(index: selectedScreen!),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(10.0),
              separatorBuilder: (_, __) => const SizedBox(width: 10.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: index != selectedScreen ? Colors.deepPurple[300] : Colors.deepPurple,
                ),
                onPressed: () => _onViewScreen(index),
                child: Text(Languages.values[index].value),
              ),
              itemCount: Languages.values.length,
            ),
          ),
          Expanded(
            flex: 10,
            child: selectedScreen == null
                ? Container(
                    color: Colors.deepPurple[100],
                    child: const Center(
                      child: Text('Please choose a language!'),
                    ),
                  )
                : _viewScreens[selectedScreen!],
          )
        ],
      ),
    );
  }
}

// GestureDetector(
// onTap: () => _onViewScreen(index),
// child: Container(
// height: 20.0,
// decoration: BoxDecoration(
// color: Colors.amber,
// border: Border.all(
// color: index == selectedScreen ? Colors.black45 : Colors.amber,
// width: 5.0,
// style: BorderStyle.solid,
// ), //B
// ),
// padding: const EdgeInsets.symmetric(
// vertical: 15.0,
// horizontal: 10.0,
// ),
// margin: const EdgeInsets.all(5.0),
// child: Text(
// Languages.values[index].value,
// style: const TextStyle(color: Colors.white, fontSize: 22.0),
// ),
// ),
// )
