import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Novosti extends StatefulWidget {
  @override
  _NovostiState createState() => _NovostiState();
}

class _NovostiState extends State<Novosti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: WebView(
          initialUrl: "https://shop.alma-ras.com/",
          javascriptMode: JavascriptMode.unrestricted,


        ),
    );
  }
}
