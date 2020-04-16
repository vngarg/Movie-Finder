import 'package:flutter/material.dart';
import 'package:movie_finder/DataLayer/Movie.dart';
import 'package:movie_finder/Widgets/Button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Icon actionIcon = Icon(Icons.search);
  Widget appBarTitle = Text("Movie Finder");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: appBarTitle), actions: <Widget>[
       IconButton(
          icon: actionIcon,
          onPressed: () {
            setState(() {
              if (this.actionIcon.icon == Icons.search) {
                this.actionIcon = Icon(Icons.close);
                this.appBarTitle = TextField(
                  controller: Movie.name,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.white),
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.white)),
                );
              } else {
                this.actionIcon = Icon(Icons.search);
                this.appBarTitle = Text("Movie Finder");
              }
            });
          },
        ),
      ]),
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Buttons()
        ],
      ),
    );
  }
}
