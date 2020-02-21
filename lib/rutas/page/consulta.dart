import 'package:flutter/material.dart';

class ConsultaPage extends StatelessWidget{

    Container MyArticles(String imageval, String heading, String subHeading) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imageval),
            ListTile(
              title: Text(heading),
              subtitle: Text(subHeading),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Busca tus peliculas Preferidas", style: TextStyle(fontSize: 15.0),),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
            },
          ),
        ],
      ),
      body: (
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MyArticles(
                "https://cdn.cinepapaya.com/stat/img/static-cp/cine/movie/sonic-la-pelicula-20290-poster-1573567392.jpg?w=250",
                "Sonic",
                "Sega"),
            MyArticles(
                "https://i.ebayimg.com/images/g/VpQAAOSwHvpa7zbY/s-l300.jpg",
                "Avengers Infinity War",
                "Marvel"),
            MyArticles(
                "https://bloximages.chicago2.vip.townnews.com/kokomotribune.com/content/tncms/assets/v3/editorial/3/9e/39ea88e2-364e-11ea-b594-9b3f8e140d7b/5e1ce55380eb4.image.jpg",
                "Bad Boys",
                "Bilall Fallah"),
          ],
        ),
        )
      ),
     //  drawer: Drawer(),
    );
  }
}

