import 'package:flutter/material.dart';
import 'package:test_task_ia/widgets/content_menu/content_menu_main.dart';
import 'package:test_task_ia/widgets/header/header_main.dart';
import 'package:test_task_ia/widgets/left_menu/left_menu_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            color: Colors.blue
        ),
        child: Scrollbar(
          trackVisibility: true,
          controller: _controller,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _controller,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height-100,
                    constraints: BoxConstraints(minHeight: 150),
                    child: Row(
                      children: [
                        LeftMenu(),
                        ContentMenu()
                      ],
                    ),
                  )
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Header(),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
