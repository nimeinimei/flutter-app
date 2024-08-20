// 随机选择
import 'package:flutter/material.dart';

class tRandomChoicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tRandomChoicePage();
}

class _tRandomChoicePage extends State<tRandomChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("随机选择 | Random Choice"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card.outlined(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(40),
                    child: Icon(
                      Icons.crisis_alert_outlined,
                      size: 50,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [Text("你抽到了："), Text("一个废物")],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("重来一次！"),
                  icon: Icon(Icons.refresh_outlined),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("就这个了~"),
                  icon: Icon(Icons.check_outlined),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
              child: Divider(
                height: 2,
              ),
            ),
            Text("详细信息："),
          ],
        ),
      ),
    );
  }
}
