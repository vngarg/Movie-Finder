import 'package:flutter/material.dart';
import 'package:movie_finder/Widgets/Button.dart';
import 'package:movie_finder/Widgets/Carousel.dart';
import 'package:movie_finder/Widgets/DrawerMenu.dart';
import 'package:movie_finder/Widgets/TabBar.dart';
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
          // MenuBar(),
          Buttons(),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: ListView.builder(
                    
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 16.0),
        child: Stack(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Colors.black26
                    ),
                height: 60.0,
                width: 120.0,
                child: Text(
                  "First One",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0),
                )),
          ],
        ),
      ),
    );
  }
}
