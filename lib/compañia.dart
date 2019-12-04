import 'package:flutter/material.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';

class Company extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Las mejores compañias'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
              icon:Icon(Icons.search),
              onPressed: (){},

          )
        ],

      ),
      body: Container(
        child: Column(
          children: <Widget>[
            tarjeta()
          ],
        )
      ),
    );
  }
}

Widget tarjeta(){
  return Container();

}
