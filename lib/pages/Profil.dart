import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

const PrimaryColor = const Color(0xFF151026);

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: WebView(
          initialUrl: "https://shop.alma-ras.com/customer/account/create/",
          javascriptMode: JavascriptMode.unrestricted,

        )
    );
  }
}


