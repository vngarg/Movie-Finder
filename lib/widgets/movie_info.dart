import 'package:flutter/material.dart';
import 'package:movie_finder/bloc/get_movie_detail_bloc.dart';
import 'package:movie_finder/models/movie_detail_response.dart';
import 'package:movie_finder/models/movie_details.dart';
import 'package:movie_finder/style/theme.dart' as Style;

class MovieInfo extends StatefulWidget {
  final int id;
  MovieInfo({Key key, @required this.id}) : super(key: key);

  @override
  _MovieInfoState createState() => _MovieInfoState(id);
}

class _MovieInfoState extends State<MovieInfo> {
  final int id;
  _MovieInfoState(this.id);

  @override
  void initState() {
    super.initState();
    movieDetailBloc..getMovieDetail(id);
  }

  @override
  void dispose() {
    super.dispose();
    movieDetailBloc.drainStream();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MovieDetailResponse>(
      stream: movieDetailBloc.subject.stream,
      builder: (context, AsyncSnapshot<MovieDetailResponse> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.error == null && snapshot.data.error.length > 0) {
            return _buildErrorWidget(snapshot.data.error);
          }
          return _buildInfoWidget(snapshot.data);
        } else if (snapshot.hasError) {
          return _buildErrorWidget(snapshot.error);
        } else {
          return _buildLoadingWidget();
        }
      },
    );
  }

  Widget _buildLoadingWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 25.0,
            width: 25.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 4.0,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildErrorWidget(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Error Occured $error" , style: TextStyle(
            color: Colors.white
          ),),
        ],
      ),
    );
  }

  Widget _buildInfoWidget(MovieDetailResponse data) {
    MovieDetail details = data.movieDetail;
    return Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10.0 , right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("BUDGET" , style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: Style.Colors.titleColor
                  ),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(details.budget.toString() + '\$' , style: TextStyle(
                    color: Style.Colors.secondColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("DURATION" , style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: Style.Colors.titleColor
                  ),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(details.runTime.toString()+ 'min.' , style: TextStyle(
                    color: Style.Colors.secondColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("RELEASE DATE" , style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: Style.Colors.titleColor
                  ),),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(details.releaseDate, style: TextStyle(
                    color: Style.Colors.secondColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),)
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
