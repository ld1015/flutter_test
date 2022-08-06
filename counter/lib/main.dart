import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '点击计数器',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(title: '点击计数器'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final title;

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _count = 0;

  void increase(int n) {
    setState(() {
      _count += n;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('点击就会增加数字', style: Theme.of(context).textTheme.headline4),
          Text('$_count', style: Theme.of(context).textTheme.headline3)
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {increase(3)},
        child: const Icon(Icons.add),
      ),
    );
  }
}