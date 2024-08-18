// 锁管理
import 'package:flutter/material.dart';

class tTimeManagerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tTimeManagerPage();
}

class _tTimeManagerPage extends State<tTimeManagerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("锁管理 | Time Manager"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Icon(Icons.lock_clock_outlined),
          Text("您已戴锁时间:"),
          Text("30d 2h 38s"),

          Text("戴锁目标:"),
          Text("30d 2h 38s"),

          SizedBox(height: 10,),
          TextButton(onPressed: (){}, child: Text("杂鱼~ 你不想带了？")),

          Text("戴锁验证态剩余 30s"),
          TextButton(onPressed: (){}, child: Text("验证：重置至 24h")),

          Text("")
        ],
      ),
    );
  }
}
