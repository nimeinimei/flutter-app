import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProfileGetWebview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileGetWebview();
  }
}

class _ProfileGetWebview extends State<ProfileGetWebview> {
  // Telegram.WebApp.
  late WebViewController controller;
  @override
  void initState() {
    // 2
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://www.csdn.net/'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var username;
    return Column(
      children: [
        WebViewWidget(controller: controller),
        IconButton(
          onPressed: () {
            setState(() async {
              username = await controller.runJavaScriptReturningResult("""
Telegram.WebApp.requestAuthentication();

Telegram.WebApp.onAuthenticationRequestFinished = function (user) {
  const userInfo = JSON.stringify(user);
  window.postMessage(userInfo, '*');
};""");
            });
          },
          icon: Icon(Icons.fact_check_rounded),
        ),
        Text(username),
      ],
    );
  }
}
