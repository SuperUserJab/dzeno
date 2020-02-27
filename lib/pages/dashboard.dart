import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loyality program', textAlign: TextAlign.center),
      ),
      body: new ListView(
        children: <Widget>[
          ImageAsset(),
          Container(
              margin: EdgeInsets.only(bottom: 0.0, left: 0.0, top: 30.0, right: 0.0),

              child: new Text("ALMA RAS LOYALTY CARD – KARTICA KROJENA ZA VAS", textAlign: TextAlign.center,)),
          Container(
              margin: EdgeInsets.only(bottom: 0.0, left: 0.0, top: 30.0, right: 0.0),

              child: new Text("Koji su bonitetni pragovi i na koji način ostvarujete popust?", textAlign: TextAlign.center,)),
          Container(
              margin: EdgeInsets.only(bottom: 0.0, left: 0.0, top: 30.0, right: 0.0),

              child: new Text("I bonitetni prag – Sa ostvarenih 15 bodova umanjuje se račun naredne kupovine za 10,00 KM", textAlign: TextAlign.left,)),
          Container(
            margin: EdgeInsets.only(bottom: 0.0, left: 0.0, top: 30.0, right: 0.0),


            child: new Text("II bonitetni prag – Sa ostvarenih 25 bodova umanjuje se račun naredne kupovine za 25,00 KM", textAlign: TextAlign.left
              ,),
          ),


        ],
      )


    );
  }
}

class ImageAsset extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/dzenans.png');
    Image image = Image(image: assetImage);

    return Container(child: image,);
  }

}