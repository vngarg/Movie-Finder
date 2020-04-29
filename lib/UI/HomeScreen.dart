import 'package:flutter/material.dart';
import 'package:movie_finder/DataLayer/Category.dart';
import 'package:movie_finder/Widgets/Button.dart';
import 'package:movie_finder/Widgets/Carousel.dart';
import 'package:movie_finder/Widgets/DrawerMenu.dart';
import 'package:movie_finder/Widgets/TabBar.dart';
import 'package:movie_finder/Widgets/TextField.dart';
import 'package:movie_finder/models/CategoryModel.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<CategoryModel> categories = List<CategoryModel>();

  @override
  void initState(){
    super.initState();
    categories = getCategories();
  }

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
        body: Container(
      child: Column(
        children: <Widget>[
          MyCarousel(context),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height:40.0,
                  child: ListView.builder(
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index) {
                      return CategoryTile(
                        name: categories[index].name,
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ),
        drawer: DrawerMenu(context));
  }
}

class CategoryTile extends StatelessWidget {

  final String name;
  CategoryTile({this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        // margin: EdgeInsets.only(right: 7.0),
        child: Stack(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(6.0),
                    // color: Colors.black26
                    ),
                height: 60.0,
                width: 120.0,
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 19.0),
                )),
          ],
        ),
      ),
    );
  }
}
