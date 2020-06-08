class Movie {
  String title, rating, plot, posterAssets;
  int year, minutes;
  List<String> tags, directors, writers, actors;

  Movie({
    this.title, 
    this.rating, 
    this.plot, 
    this.posterAssets,
    this.year, 
    this.minutes,
    this.tags,
    this.directors,
    this.actors,
    this.writers
    });
}

final lordOfTheRings = Movie(
  title:'The Lord of the Rings: The Followship of the Ring',
  rating: 'PG-13',
  plot: 'Young hobbit Frodo Baggins, after inheriting a mysterious ring from his uncle Bilbo, must leave his home in order to keep it from falling into the hands of its evil creator. Along the way, a fellowship is formed to protect the ringbearer and make sure that the ring arrives at its final destination: Mt. Doom, the only place where it can be destroyed.',
  posterAssets: 'assets/lotr.jpg',
  year: 2001,
  minutes: 178,
  tags: ['Adventure','Fantasy', 'Action'],
  directors: ['Peter Jackson'],
  writers: [
    'J.R.R. Tolkien(novel and screenplay)',
    'Frank Walsh (screenplay)',
    'Phillips Boyens(screenPay)'  
    ],
  actors: [
    'Elijah Wood',
    'Ian McKellen',
    'Viggo mortensen',
    'Sean Astin',
    'Liv Tyler',
    'Orlando Bloom',
    'Sean Bean',
    'Christopher Lee',
    'Cate Blanchett',

  ]
      
  );