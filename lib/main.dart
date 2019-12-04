import 'package:flutter/material.dart';
//import 'package:integradormob/Login.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kiraw',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        buttonTheme: ButtonThemeData(height: 50,),
        textTheme: TextTheme(
          button:TextStyle(
            fontSize:15,
            color:Colors.white
          )
        )
      ),
      home: MyApp(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: DefaultTabController(
      length: 4,
    child: Scaffold(
          
      appBar: AppBar(backgroundColor:Colors.green, bottom: TabBar(
        tabs: [
                Tab(icon: Icon(Icons.home,)),
                Tab(icon: Icon(Icons.shopping_cart)),
                Tab(icon: Icon(Icons.dashboard)),
                Tab(icon: Icon(Icons.assignment_ind)),
              ],
      ),
        title: Text(widget.title),
        
      ),
      body: TabBarView(
            children: [
              Container(
                child: ListView(
                  children: <Widget>[
                      Container(height:200,color: Colors.black),Container(height:200,color: Colors.white,),Container(height:600,color:Colors.yellow,)
                  ],
                )

              ),
              
                   Container(
                     child: ListView (
                       children:<Widget>[
                                     Container( 
                width: 85.0,
      height: 75.0,
      
      decoration: new BoxDecoration(
          
          image: new DecorationImage(
          fit: BoxFit.fill,
          image: new NetworkImage(
                 "https://i.imgur.com/BoN9kdC.png")
                 )
)                
              )
                       ]
                     
                     )
                      
                   ),
              
              Icon(Icons.directions_bike),
              Icon(Icons.directions_bike),
            ],
      ),
      
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        
         
        child: ListView(
          
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                padding: EdgeInsets.only(left:15,
                right: 15),
                color:Colors.green,
                child: ListView(
                  children: <Widget>[
                    ListTile( 
                      leading:Container( 
                width: 85.0,
      height: 75.0,
      
      decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
          fit: BoxFit.fill,
          image: new NetworkImage(
                 "https://i.imgur.com/BoN9kdC.png")
                 )
)                
              ),                  
                    ),
                    Text(''),Text(''),Text(''),
              Text('Información de tu perfil',textDirection: TextDirection.rtl,),
              ]))
            ),
            ListTile(
              title: Text('Tu foto'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Nombre'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Correo'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Descripcion'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      
      //tabBar // This trailing comma makes auto-formatting nicer for build methods.
    )));
  }
}
class Mydrawer extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

