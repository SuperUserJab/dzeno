import 'package:flutter/material.dart';
class Lokacije extends StatefulWidget {
  @override
  _LokacijeState createState() => _LokacijeState();
}

class _LokacijeState extends State<Lokacije> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lokacije', textAlign: TextAlign.center),

      ),
      body: ListView.builder(itemCount: LokacijeAras.length,
        itemBuilder: (context, index) {
          return ListTile(leading: Image.network(LokacijeAras[index].imageUrl), title: Text(LokacijeAras[index].Grad), subtitle: Text(LokacijeAras[index].Adresa), );
        },

      )


    );
  }
}

class Place {
  String imageUrl;
  String Grad;
  String Adresa;

  Place({this.imageUrl, this.Grad, this.Adresa});
}

List LokacijeAras = [
  Place(
      imageUrl:
      "https://retailsee.com/wp-content/uploads/2018/10/alma-ras-760-x-500.jpg",
      Grad: "Sarajevo",
      Adresa: "Butmirska Cesta 14, Ilidža"),
  Place(
      imageUrl:
      "https://lh5.googleusercontent.com/p/AF1QipO6SALstht3mTOjsOGDOR4eRfGgoW8kyokJxLnd=w408-h306-k-no",
      Grad: "Sarajevo",
      Adresa: "Hamdije Kreševljakovića, 61"),
  Place(
      imageUrl:
      "https://lh5.googleusercontent.com/p/AF1QipMTKK_MscpgIy7VIt4RyGLCS7KQz8rRCEN3pbPn=w408-h510-k-no",
      Grad: "Sarajevo",
      Adresa: "Trg djece Sarajeva 1"),
  Place(
      imageUrl:
      "https://lh5.googleusercontent.com/p/AF1QipP2QMAEErN4YDKlz2skxZc3LldF93ilqcWrFrbZ=w888-h660-n-k-no",
      Grad: "Mostar",
      Adresa: "Kardinala Stepinca"),


];