import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:web/pages/profilepage.dart';
import 'package:web/pages/timemanagerpage.dart';
import 'package:web/pages/taskmanagerpage.dart';

class tHomePage extends StatefulWidget {
  const tHomePage({super.key});

  @override
  State<tHomePage> createState() => _tHomePage();
}

class _tHomePage extends State<tHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("涩之律者的秘密小屋！"),
          leading: IconButton(
            icon: Icon(Icons.person_2),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => tProfilePage())),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text(
                  "🔮",
                  style: TextStyle(fontSize: 70),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 3, 15, 10),
                    child: Card.outlined(
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              "%今日运势%",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Text(
                              "大吉",
                              style: Theme.of(context).textTheme.headlineLarge,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("你已经在基地连续打卡了 234 天"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              padding: EdgeInsets.all(8),
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 1.3,
              children: List.generate(
                tHomepageContentList.length,
                (i) {
                  _tHomepageContentList tItem = tHomepageContentList[i];
                  return InkWell(
                    onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (_) => tItem.page)),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(tItem.icon),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(tItem.title,style: Theme.of(context).textTheme.titleMedium,),
                                  Text(tItem.subtitle,style: Theme.of(context).textTheme.bodySmall),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      elevation: 0.5,
                      margin: EdgeInsets.all(10),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _tHomepageContentList {
  late StatefulWidget page;
  late IconData icon;
  late String title;
  late String subtitle;

  _tHomepageContentList(
      {required this.page,
      required this.icon,
      required this.title,
      required this.subtitle});
}

List<_tHomepageContentList> tHomepageContentList = [
  _tHomepageContentList(
      page: tTimeManagerPage(),
      icon: Icons.lock_clock_outlined,
      title: "时间规划",
      subtitle: "锁上你的废物唧唧~"),
  _tHomepageContentList(
      page: tTaskManagerPage(),
      icon: Icons.task_alt_rounded,
      title: "任务管理",
      subtitle: "我是驱魔师，这就是神魔"),
];
