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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: "更多",
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                final SnackBar snackBar = SnackBar(
                  content: const Text("我还没做！"),
                  action: SnackBarAction(
                    label: "返回",
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
            IconButton(
              tooltip: "筛选",
              icon: const Icon(Icons.rule),
              onPressed: () {},
            ),
            IconButton(
              tooltip: '收藏',
              icon: const Icon(Icons.favorite_outline),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "搜索",
        child: const Icon(Icons.search_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      body: Column(
        children: [],
      ),
    );
  }
}
