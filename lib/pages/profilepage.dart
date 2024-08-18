import 'package:flutter/material.dart';

class tProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tProfilePage();
}

class _tProfilePage extends State<tProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_rounded)),
        title: const Text("信息 | Profile"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 5, 20, 10),
          child: ListView(
            children: [
              Column(children: <Widget>[
                IconButton(
                  icon: Icon(Icons.person_2),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => tProfilePage())),
                ),
                Text("晚上好, Bronya.",
                    style: Theme.of(context).textTheme.headlineMedium),
                Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  child: Text("夜深人静，真是适合游玩呢。"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Divider(thickness: 3),
                ),
              ]),
              ProfilePageContext()
            ],
          ),
        ),
      ),
    );
  }
}

class ProfilePageContext extends StatefulWidget {
  const ProfilePageContext({super.key});

  @override
  State<ProfilePageContext> createState() => _ProfilePageContext();
}

class _ProfilePageContext extends State<ProfilePageContext> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ProfilePageCard(
          icon: Icons.account_balance_wallet_outlined,
          title: "拥有经验：",
          subtitle: "9",
        ),
        ProfilePageCard(
          icon: Icons.gesture,
          title: "已关联 Telegram 账号：",
          subtitle: "Bronya",
        ),
        ProfilePageCard(
          icon: Icons.toll_rounded,
          title: "您拥有的玩具：",
          subtitle: """
肛塞 小号
平板锁
郊狼 v2""",
        ),
        ProfilePageCard(
          icon: Icons.person_pin_outlined,
          title: "个人状态：",
          subtitle: """
已上锁。
拥有未完成任务: 3""",
        ),
      ],
    );
  }
}

class ProfilePageCard extends StatefulWidget {
  const ProfilePageCard(
      {super.key,
      required this.icon,
      required this.title,
      this.onTap,
      this.subtitle,
      this.isSubTitleOverflow = false});
  final Function()? onTap;
  final IconData icon;
  final String title;
  final String? subtitle;
  final bool isSubTitleOverflow;

  @override
  State<ProfilePageCard> createState() => _ProfilePageCard();
}

class _ProfilePageCard extends State<ProfilePageCard> {
  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: widget.onTap,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(widget.icon),
              VerticalDivider(),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Visibility(
                      visible: widget.subtitle != null,
                      child: Text(
                        "${widget.subtitle}",
                        overflow: widget.isSubTitleOverflow
                            ? TextOverflow.ellipsis
                            : null,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
