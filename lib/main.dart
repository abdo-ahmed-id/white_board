import 'package:agora_test1/reply_page.dart';
import 'package:agora_test1/room_page.dart';
import 'package:agora_test1/white_page.dart';
import 'package:agora_test1/window_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whiteboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'White Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => _pushPage(context, allPages[0]),
                  child: const Text("Room"),
                )),
            const SizedBox(height: 40),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => _pushPage(context, allPages[1]),
                  child: const Text("Replay"),
                )),
            const SizedBox(height: 40),
            SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  onPressed: () => _pushPage(context, allPages[2]),
                  child: const Text("Window"),
                )),
          ],
        ),
      ),
    );
  }

  void _pushPage(BuildContext context, WhiteExamplePage page) {
    Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text(page.title)),
              body: page,
            )));
  }
}

final List<WhiteExamplePage> allPages = <WhiteExamplePage>[
  RoomTestPage(),
  ReplayTestPage(),
  WindowTestPage(),
];
