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
  String? username;
  late WebViewController controller;
  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        WebViewWidget(controller: controller),
        IconButton(
          onPressed: () async {
            String? result = (await controller.runJavaScriptReturningResult("""
Telegram.WebApp.requestAuthentication();

Telegram.WebApp.onAuthenticationRequestFinished = function (user) {
  const userInfo = JSON.stringify(user);
  window.postMessage(userInfo, '*');
};""")) as String?;
            setState(() {
              username = result;
            });
          },
          icon: Icon(Icons.fact_check_rounded),
        ),
        Text(username ?? "Waiting..."),
      ],
    );
  }
}
