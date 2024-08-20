import 'package:flutter/material.dart';
import 'package:web/pages/explorepage.dart';
import 'package:web/pages/profilepage.dart';
import 'package:web/pages/randomchoicepage.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
              child: Divider(
                height: 2,
              ),
            ),
            // Wrap(
            //   alignment: WrapAlignment.start,
            //   runAlignment: WrapAlignment.start,
            //   crossAxisAlignment: WrapCrossAlignment.center,
            //   spacing: 8,
            //   runSpacing: 4,
            //   // crossAxisCount: 2,

            //   children: List.generate(
            //     tHomepageContentList.length,
            //     (i) {
            //       _tHomepageContentList tItem = tHomepageContentList[i];
            //       return InkWell(
            //         onTap: () => Navigator.push(
            //             context, MaterialPageRoute(builder: (_) => tItem.page)),
            //         child: Card(
            //           clipBehavior: Clip.antiAliasWithSaveLayer,
            //           child: Padding(
            //             padding: EdgeInsets.all(20),
            //             child: Row(
            //               mainAxisSize: MainAxisSize.min,
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               children: [
            //                 Icon(tItem.icon),
            //                 SizedBox(
            //                   width: 10,
            //                 ),
            //                 Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   mainAxisAlignment: MainAxisAlignment.center,
            //                   children: [
            //                     Text(
            //                       tItem.title,
            //                       style:
            //                           Theme.of(context).textTheme.titleMedium,
            //                     ),
            //                     Text(tItem.subtitle,
            //                         style:
            //                             Theme.of(context).textTheme.bodySmall),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ),
            //           elevation: 0.5,
            //           margin: EdgeInsets.all(10),
            //         ),
            //       );
            //       // return ListTile(
            //       //   leading: Icon(Icons.abc),
            //       //   title: Text("123"),
            //       //   subtitle: Text("123"),
            //       // );
            //     },
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: Text(
                "来看看有什么功能吧~",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Column(
                children: List.generate(tHomepageContentList.length, (i) {
                  _tHomepageContentList tItem = tHomepageContentList[i];
                  return ListTile(
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => tItem.page)),
                    leading: Icon(tItem.icon),
                    title: Text(tItem.title),
                    subtitle: Text(tItem.subtitle),
                    trailing: Icon(Icons.arrow_forward_rounded),
                  );
                }),
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
  _tHomepageContentList(
      page: tExplorePage(),
      icon: Icons.travel_explore_outlined,
      title: "探索森林",
      subtitle: "前进，不择手段地前进！"),
  _tHomepageContentList(
      page: tRandomChoicePage(),
      icon: Icons.casino_outlined,
      title: "随机选择",
      subtitle: "看看谁的运气最好呢")
];
