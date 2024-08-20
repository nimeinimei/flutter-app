// 探索页
import 'package:flutter/material.dart';

class tExplorePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tExplorePage();
}

class _tExplorePage extends State<tExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("探索森林 | Exploring Forever"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "背包",
        child: Icon(Icons.backpack_outlined),
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
                      "查看背包：",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  Row(children: [],),
                  // TODO: backpack
                ],
              );
            },
          );
        },
      ),
    );
  }
}
