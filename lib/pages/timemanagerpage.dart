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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 2, 20, 2),
        child: Center(
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                // Icon(Icons.lock_clock_outlined),
                Card.outlined(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: Stack(
                            fit: StackFit.expand,
                            alignment: AlignmentDirectional.center,
                            children: [
                              Icon(Icons.lock_clock_outlined),
                              CircularProgressIndicator(
                                value: 0.8,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text("您已戴锁时间:"),
                              Text(
                                "30d 2h 38s",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("戴锁目标:"),
                              Text(
                                "30d 2h 38s",
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              TextButton(
                                  onPressed: () {}, child: Text("杂鱼~ 你不想带了？")),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Text("戴锁验证态剩余 30s"),
                TextButton(onPressed: () {}, child: Text("验证：重置至 24h")),
                SizedBox(
                  height: 20,
                ),
                Divider(
                  height: 2,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      "详细信息：",
                      style: Theme.of(context).textTheme.titleMedium,
                    ))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.timer_outlined),
                  title: Text("开始时间："),
                  subtitle: Text("2024-08-19 18:30",
                      style: Theme.of(context).textTheme.titleSmall),
                ),
                ListTile(
                  leading: Icon(Icons.timer_outlined),
                  title: Text("结束时间："),
                  subtitle: Text("2024-09-19 18:30",
                      style: Theme.of(context).textTheme.titleSmall),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
