import 'package:flutter/material.dart';

class CatalogoPage extends StatelessWidget {
  Container MyArticles(String imagen, String titulo, String subTitulo) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(imagen),
            ListTile(
              title: Text(titulo),
              subtitle: Text(subTitulo),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Consulta las peliculas',
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
      body: 

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
      ),
    );
  }
}
