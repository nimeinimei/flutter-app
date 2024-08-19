// 任务管理
import 'package:flutter/material.dart';

class tTaskManagerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tTaskManagerPage();
}

class _tTaskManagerPage extends State<tTaskManagerPage> {
  List<String> toylist = ["锁", "塞子", "郊狼", "假体", "其他"];
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
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  showDragHandle: true,
                  context: context,
                  builder: (context) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "筛选任务标签：",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Wrap(
                            alignment: WrapAlignment.start,
                            runAlignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            spacing: 8,
                            runSpacing: 4,
                            children: toylist.map((toy) {
                              return ChoiceChip(
                                onSelected: (bool selected) {},
                                selected: false,
                                avatar: CircleAvatar(
                                  backgroundColor: Colors.green.shade200,
                                ),
                                label: Text(toy),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
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
