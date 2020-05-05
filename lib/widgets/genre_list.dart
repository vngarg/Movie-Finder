import 'package:flutter/material.dart';
import 'package:movie_finder/models/genre.dart';
import 'package:movie_finder/style/theme.dart' as Style;
import 'package:movie_finder/widgets/genre_movies.dart';

class GenreList extends StatefulWidget {

  final List<Genre> genres;
  GenreList({
    Key key ,
    @required this.genres
  }) : super(key: key);

  @override
  _GenreListState createState() => _GenreListState(genres);
}

class _GenreListState extends State<GenreList> with SingleTickerProviderStateMixin{

  final List<Genre> genres;
  TabController _tabController;
  _GenreListState(this.genres);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this , length: genres.length);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 307.0,
      child: DefaultTabController(
        length: genres.length,
        child: Scaffold(
          backgroundColor: Style.Colors.mainColor,
          appBar: PreferredSize(
            child: AppBar(
              backgroundColor: Style.Colors.mainColor,
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: Style.Colors.secondColor,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 3.0,
                unselectedLabelColor: Style.Colors.titleColor,
                labelColor: Colors.white,
                isScrollable: true,
                tabs: genres.map((Genre genre) {
                  return Container(
                    padding: EdgeInsets.only(bottom: 15.0 , top: 10.0),
                    child: Text(genre.name.toUpperCase() , style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold
                    ),),
                  );
                }).toList()
              ),
            ),
            preferredSize: Size.fromHeight(50.0),
          ),
          body: TabBarView(
            controller: _tabController,
            physics: NeverScrollableScrollPhysics(),
            children: genres.map((Genre genre) {
              // return Text("${genre.name} ${genre.id}" , style: TextStyle(color: Colors.white),);
              return GenreMovies(genreId: genre.id);
            }).toList(),
          ),
        ),
      ),
    );
  }
}