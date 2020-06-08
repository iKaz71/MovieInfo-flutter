import 'package:flutter/material.dart';
import 'movie.dart';

class MovieInfo extends StatelessWidget {
  final Movie movie = lordOfTheRings;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Movie'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
           // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              MovieTop(movie),
              MovieMiddle(movie),
              MovieBottom(movie),
            ]),
      ),
    ));
  }
}

class MovieTop extends StatelessWidget {
  final Movie movie;
  MovieTop(this.movie);
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Color.fromARGB(100, 255, 255, 255),
      fontSize: 12,
    );
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                this.movie.title,
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
                ),
              ),
            ),
            Row(children: <Widget>[
              Text('${this.movie.year}', style: textStyle),
              SizedBox(
                width: 10,
              ),
              Text(this.movie.rating, style: textStyle),
              SizedBox(
                width: 10,
              ),
              Text('${this.movie.minutes} min', style: textStyle),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Text(
                '${this.movie.tags.join(', ')}',
                style: textStyle,
                textAlign: TextAlign.right,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )),
            ])
          ],
        ),
      ),
    );
  }
}

class MovieMiddle extends StatelessWidget {
  final Movie movie;

  MovieMiddle(this.movie);
  @override
  Widget build(BuildContext context) {
    final borderSide = BorderSide(
      color: Color.fromARGB(30, 255, 255, 255),
      width: 1,
    );
    return Container(
      height: 300,
      decoration: BoxDecoration(
        border: Border(
          top: borderSide,
          bottom: borderSide,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(this.movie.posterAssets),
          Expanded(
            
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                this.movie.plot,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  height: 1.40,
                ),
                //maxLines: , arreglar si es muy largo Doggy 
               // overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MovieBottom extends StatelessWidget {
  final Movie movie;

  MovieBottom(this.movie);

  TableRow _tableRow(String label, List<String> people,{String sep = ', '}){
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      height: 1.4,
      );
    return TableRow(children:[
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(label, style: textStyle.copyWith(fontWeight: FontWeight.bold)),
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(people.join(sep), style: textStyle),
      )
    ]);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Table(
          columnWidths: {
            
            1:FlexColumnWidth(1), 
            2:FlexColumnWidth(3)

            },
          children: [
            _tableRow('Directors',this.movie.directors),
            _tableRow('Writers',this.movie.writers),
            _tableRow('Actors',this.movie.actors, sep: '\n'),
            
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MovieInfo());
}
