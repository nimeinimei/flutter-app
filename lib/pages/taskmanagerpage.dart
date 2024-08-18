// 任务管理
import 'package:flutter/material.dart';

class tTaskManagerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tTaskManagerPage();
}

class _tTaskManagerPage extends State<tTaskManagerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("任务管理 | Task Manager"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
