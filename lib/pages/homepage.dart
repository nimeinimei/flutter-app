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
            context, MaterialPageRoute(builder: (_) => tTimeManagerPage())),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
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
              children: List.generate(
                3,
                (index) {
                  return Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      children: [
                        SizedBox(
                          child: Image.network(
                            'https://mooc-image.nosdn.127.net/822c8b2cc8cd42db848639321d8194c7.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                  children: [Text('Title'), Text('Subtitle')]),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward))
                          ],
                        )
                      ],
                    ),
                    elevation: 0,
                    margin: EdgeInsets.all(10),
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
