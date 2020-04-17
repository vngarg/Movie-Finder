import 'package:flutter/material.dart';
import 'package:movie_finder/Widgets/Button.dart';
import 'package:movie_finder/Widgets/Carousel.dart';
import 'package:movie_finder/Widgets/DrawerMenu.dart';
import 'package:movie_finder/Widgets/TextField.dart';

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
                  this.appBarTitle = TxtField();
                } else {
                  this.actionIcon = Icon(Icons.search);
                  this.appBarTitle = Text("Movie Finder");
                }
              });
            },
          ),
        ]),
        body: HomeScreen(),
        drawer: DrawerMenu(context));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          MyCarousel(context),
          Buttons(),
        ],
      ),
    );
  }
}
